# D0 — Toolchain & First Run: What I Learned

> Track 1 · Dart Foundations · Unit D0 · 2026-10-25
> SDK: Flutter 3.38.3 · Dart 3.10.1 · tested on a physical Android phone
>
> Every topic below has three parts: **what it is**, **why it matters**, and **what I saw myself**. Facts were checked against the official Flutter docs on 2026-10-25.

---

## 1. Dart vs Flutter

**What**
- **Dart** is a programming language — like TypeScript, it's typed and has `async`/`await`.
- **Flutter** is a UI toolkit written in Dart. It's not a language, and it's more than a package: the Dart **framework** package plus a **C++ engine**, a **native embedder** for each platform, and the `flutter` command-line tool.

**The idea that matters most:** Flutter does **not** use Android's or iOS's buttons. It **draws every pixel itself**. That's why a Flutter app looks the same everywhere.

| | TypeScript | Dart |
|---|---|---|
| Types exist while running? | No — erased at compile | Yes — real at runtime |
| How it runs in production | JIT in Node / browser | Compiled to machine code (mobile) or JS/Wasm (web) |
| Async value | `Promise` | `Future` |

**Why it matters:** if I think Flutter is "just a package", I can't explain why an Android build can fail while my Dart is fine, or where 10 MB of my APK comes from (the engine — see §6).

**What I saw:** `runApp` is an ordinary function from an ordinary library. My `main()` is a normal Dart `main()`.

---

## 2. The four layers

```text
┌─ MY DART CODE ──────── describes what the UI should be
├─ FLUTTER FRAMEWORK ─── widgets, layout, gestures (written in Dart)
├─ ENGINE ────────────── draws pixels, lays out text, runs Dart (C++)
└─ EMBEDDER ──────────── native host app: owns the window, sends touches up
```

**Key sentence:** the framework **describes**. The engine **draws**.

**Why it matters:** when something breaks, the first question is *which layer?* That tells me where to look and which tool can see the problem.

---

## 3. Why the same code runs on Android and Chrome

| | Android | Chrome |
|---|---|---|
| My Dart code | same | same |
| Framework | same | same |
| How Dart is compiled | machine code for the phone CPU | **JavaScript or WebAssembly** (not native) |
| **Embedder** | Android host app | **web embedder** (a web page) |

**Only the embedder is swapped per platform.** My code never knows which one it's on.

**Why it matters:** an Android licence error broke the **Android embedder build**. Chrome uses a different embedder, so the same Dart still ran there. Different embedders fail independently.

---

## 4. What happens when I type `flutter run`

1. My Dart is compiled (debug build → runs in a VM)
2. The native Android host app is built (Gradle — this step needed the licences)
3. Both are packaged into an APK
4. The APK is installed and launched — the embedder opens a window
5. `main()` runs → `runApp` hands my widgets to the framework
6. The framework describes a frame → the engine paints it

**Why it matters:** each step can fail on its own. Knowing the order tells me *which* step a given error came from.

---

## 5. `flutter test` — which layers it uses

- **Uses:** my code + framework + a **headless engine** (no real screen). The Dart VM lives inside the engine layer — it's not a separate layer.
- **Skips:** the platform embedder.

**Why it matters:** tests need no emulator, no phone, and no Android SDK — so they're fast and can run anywhere (including CI later).

---

## 6. Hot reload vs hot restart vs full restart

| | Hot **reload** (`r`) | Hot **restart** (`R`) | Full restart |
|---|---|---|---|
| Reruns `main()`? | ❌ No | ✅ Yes, from the top | ✅ Yes |
| What reruns | only `build()` | the whole app | the whole app + native code rebuilt |
| Global variables | **keep old value** | set again | set again |
| App state | kept | lost | lost |
| Speed | fastest | fast | slow |
| Needed for | UI changes inside `build()` | changes to globals, `main()`, initializers | native (Kotlin/Swift) changes |

**Memory trick:** re**start** = the app *starts again* from `main()`. Reload = swap the code and redraw.

**Why it matters:** if a change "doesn't show up", the reason is usually that it lives outside `build()` and I pressed `r` instead of `R`. Without this rule I'd think my code was broken when it isn't.

**What I saw (my own lab):**
- Changed the text inside `build()` → `r` → updated ✓
- Changed `final name = 'Jay'` (a global) → `r` → **no change** → `R` → updated ✓

**Mistake I made:** once explained it backwards (said restart keeps the old value). Corrected — restart is the one that reruns `main()`.

---

## 7. Build modes — debug, profile, release

| | Debug | Profile | Release |
|---|---|---|---|
| How Dart runs | in a **VM** (allows hot reload) | machine code | machine code |
| Hot reload | ✅ | ❌ | ❌ |
| `assert` checks | run | skipped | skipped |
| DevTools / debugger | ✅ | ✅ (performance tracing) | ❌ |
| Emulator | ✅ | ❌ | ❌ |
| Build error looks like | **red screen + message** | — | **gray screen, no message** |
| Banner | DEBUG banner | — | none |
| Command | `flutter run` | `flutter run --profile` | `flutter run --release` |

**Why hot reload can't exist in release:** reload needs a VM to inject new code into. Release is plain machine code — there's nothing to inject into.

**What I measured on my own project:**

```text
flutter build apk --debug      149 MB   (VM + debugging support, 3 CPU types)
flutter build apk --release     40 MB   (3 CPU types × ~13.3 MB)
flutter run --release           14.2 MB (only my phone's CPU — arm64)
   └─ 10.6 MB  libflutter.so  ← the ENGINE
   └─  2.7 MB  libapp.so      ← my code + framework, as machine code
```

- Release key commands showed only `h`, `c`, `q` — **no `r`, no `R`**.
- `kReleaseMode` printed `false` in debug, `true` in release.

**Why it matters:**
- Never judge speed or size from a debug build — it's slow and huge on purpose.
- A bug that shows a helpful red screen in debug becomes a **silent gray screen** for real users. Neither they nor I get a message. That's why crash reporting exists (P8).
- My project signs release builds with the **debug key** (template default). Fine for my phone; can **never** be uploaded to a store.

---

## 8. Compile-time vs runtime — two real bugs I fixed

| | Bug 1 — `invalid_constant` | Bug 2 — No Directionality |
|---|---|---|
| What I did | used a `final` variable inside `const MaterialApp(...)` | `runApp(const Text('Hello Jay'))` with no `MaterialApp` |
| Caught by | **the analyzer**, before running | **only at runtime** — analyzer said "No issues found!" |
| Why that tool | `const` must be known while compiling; a `final` value isn't | Whether a `Directionality` exists *above* the `Text` is only known once Flutter **builds the widget tree**, which happens while the app runs. The analyzer only reads the file — it never builds the tree. |
| Fix | removed `const` from `MaterialApp` (alt: make `name` `const`) | restored `runApp(const MainApp())` — `MaterialApp` provides `Directionality` |

```text
Broken:   Text                    ← nothing above it → red screen
Fixed:    MainApp
            └─ MaterialApp        ← provides Directionality
                 └─ Scaffold → Center → Text  ✓
```

**Why it matters:** "the analyzer is clean" does **not** mean "the app works". I need to know what each tool can and can't see.

**Habit that worked:** I read the red error screen — and the fix was written in it ("typically introduced by the MaterialApp").

---

## 9. Git habits

| Habit | Why |
|---|---|
| **Commit before changing things** | so there's always a working version to go back to |
| **Write the message from `git diff --staged`** | the message must describe what the diff actually does |
| **A behaviour change is never a "refactor"** | refactor = same behaviour, different structure |
| Don't commit `.DS_Store` | macOS junk; shows up as noise in every diff |

**Why it matters:** `git log` is how I find *when* something broke. A wrong message sends me to the wrong commit.

**What happened:** 4 of my first 6 commit messages didn't match their diff (one hid a behaviour change under "comments and formatting"). The last two were accurate.

---

## 10. FVM and `.fvmrc` (SDK pinning)

- I use **FVM 4.1.2**; `flutter` currently resolves through FVM's **global default**.
- `fvm use <version>` in a project creates **`.fvmrc`** (records the project's Flutter version) and a **`.fvm/`** folder (a symlink to the SDK).
- FVM recommends adding **`.fvm/`** to `.gitignore` (it does this by default).
- `pubspec.yaml` pins only the **Dart language** range (`^3.10.1`) — nothing pins the **Flutter** version yet.

**Why it matters:** without a pin, changing the global default or running `flutter upgrade` silently moves this project to a different Flutter — and an app that built yesterday may not build today.

---

## Commands I used

```bash
flutter --version              # Flutter + Dart + engine versions
flutter doctor -v              # check the whole toolchain
flutter doctor --android-licenses
flutter create <name>          # new project
flutter run                    # debug, hot reload available
flutter run --release          # release on a real device
flutter build apk --debug      # build only, debug
flutter build apk --release    # build only, release
flutter analyze                # static checks — reads code, never runs it
dart format .                  # format code
git diff --staged              # read before every commit
```

---

## Mistakes I made in D0 (and the fix)

| Mistake | Correct idea |
|---|---|
| Answered only part of multi-part questions | Count the deliverables; answer each one; check before sending |
| Called Flutter "just a package" | Framework package **+ C++ engine + embedders + tooling** |
| Said the engine alone makes code cross-platform | The **embedder** is what gets swapped per platform |
| Said Chrome gets native code | Web compiles Dart to **JS or Wasm** |
| Swapped hot reload and hot restart | Restart reruns `main()`; reload only reruns `build()` |
| "It's a runtime issue" as the whole explanation | Say **why**: which tool can't see it, and what it would need to see |
| Commit messages that didn't match the diff | Write the message from `git diff --staged` |
