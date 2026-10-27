# Dart & Flutter Mastery Learning Tracker

> **Purpose:** single source of truth for progress, mastery, quizzes, mistakes, technical debt, and the next action.
>
> **Learning rule:** a topic is not complete because it was explained. It is complete when I can **Explain → Implement → Debug → Apply → Defend** it.
>
> **Restructured 2026-10-25** to match the format of `../backend/LEARNING_TRACKER.md`, which is working well. Changes: 5 mastery levels instead of 7, mastery tracked per *topic* instead of per *phase*, granular tickable tasks, inline evidence, a real Dart foundation track, and one continuous project instead of ten disconnected ideas. All prior history was carried over, not reset.

---

## Progress Legend

| Status | Meaning |
|---|---|
| `TODO` | Not started |
| `IN PROGRESS` | Currently learning |
| `REVIEW` | Learned, but needs reinforcement |
| `BLOCKED` | Dependency or unresolved issue |
| `DONE` | Demonstrated understanding + implementation |

### Mastery

```text
[ ] Explain    — I can explain it in simple language, without notes
[ ] Implement  — I can build a small version from a blank file
[ ] Debug      — I can diagnose common failures myself
[ ] Apply      — I can use it correctly in the real project
[ ] Defend     — I can justify the trade-off in a code review or interview
```

Never tick all five automatically. A topic reaches `DONE` at **Explain + Implement + Debug**; `Apply` and `Defend` stay visible until the project work and the checkpoint prove them.

**File convention:** a topic that has been started carries a full task list, inline evidence, a `Remaining before DONE:` line and a mastery block. A `TODO` topic carries only its task checkboxes — the detail gets written when we reach it.

---

# Current Position

**Track:** 1 — Dart Foundations
**Topic:** ✅ D0 · ✅ D1 · ✅ D2 DONE · 🔄 **D3 — control flow** · ✅ Step 1 `while` rewrite (142 ✓) · ✅ Step 2 infinite loop (partial; model statement given, rechecked at the D3 close-out) · ✅ Step 3 off-by-one (190 → 210, fixed with `<=`) · ✅ Step 4 `for-in` rewrite (clean) · ✅ Step 5b guard clause → `double`, `[]` → 0.0, print back in `bin/` · ⚠️ **D3 close-out 18/25 (72%) — not passed.** `validAverage` returns 1.714 (should be 4.0) and was committed; Q3 and Q5 wrong → remediation issued
**Notes:** per-unit study notes live in `notes/`. D0 → [`notes/D0-toolchain-and-first-run.md`](notes/D0-toolchain-and-first-run.md) (created on request 2026-10-25)
**Clean slate:** quiz history cleared and all mastery reset on 2026-10-25 at my request. Nothing is assumed learned.
**Revise (spaced):** expected values from the definition, not the code — **still unanswered** (D2 close-out Q3 skipped the value of `7 / 2`) · AOT = compiled *before* running — corrected 2026-10-26; recheck about 3 sessions later · compiler vs runtime — defined 2026-10-26, recheck about 3 sessions later · hot reload vs hot restart — ✅ passed its recheck (D2 close-out Q4); retire after one more · per-platform embedder — **corrected** in close-out Q1 (4/5); recheck about 1 week later · why an error is runtime, by mechanism rather than label
**Open drill:** answering completeness. Fill-in template at the end of every exercise. **Format change 2026-10-27, at my request:** one step per message ended ("time consuming") — the rest of D3 is taught as one lesson. Note: the one-step format is when completeness improved (D2 Step 7 was the first fully complete reply), so watch for gaps
**Strategy:** beginner-first · one small topic at a time · project-first · I implement, Claude does not

### Machine state — verified, not assessment

- [x] Flutter 3.38.3 / Dart 3.10.1 via FVM; Android licences accepted
- [x] `learning/` scaffold exists; Android debug APK built; format and analyze clean

### Not yet demonstrated — do not assume

- Everything. The track restarts at D0 with every mastery box empty.
- No Dart has been written yet; `learning/` is the untouched `flutter create` scaffold.

### Prior experience — bridge, not a skip

I have ~15 years of development experience and a backend track (`../backend/`) with 35 commits of real Node/TypeScript work, including **demonstrated** event-loop mastery (microtasks vs macrotasks, `process.nextTick` priority, backpressure measured at 370MB → 69MB RSS).

**How to use that here:** anchor every new Dart concept to the TypeScript/Node equivalent I have already proven — it is the fastest honest route. Dart's event loop, `async`/`await`, and `Future` are close cousins of what I already know.

**How not to use it:** JS evidence is not Dart evidence. I still implement and get assessed in Dart. Per the teaching contract, used ≠ understood, and another language's mastery is a bridge to the explanation, never a reason to tick a box.

---

# How I want to be taught

## Treat me as someone who just started writing code

Beginner-first pacing on every Dart and Flutter concept. Plain language and a concrete analogy before any jargon. Small steps. Do not assume I know a Flutter term because I know a backend one.

## The loop for every topic

### A. Explain
Simple explanation first, with a real-world analogy and a TypeScript/Node comparison where one genuinely fits. Then the correct engineering terminology, and where the analogy breaks.

### B. Show the smallest example
A 10–30 line runnable example. Not a production architecture.

```text
Concept → 10–30 line example → why it works → failure case → real project use
```

### C. Make me implement
Give requirements, files to touch, acceptance criteria and hints. **Do not write the solution.** Wait for my attempt.

### D. Review my implementation
Inspect for correctness, naming, architecture, error handling, lifecycle cleanup, security, testability, accessibility, performance. Rank findings:

```text
P0 = dangerous / incorrect      P2 = improvement
P1 = important                  P3 = optional polish
```

For each: **Problem → Why it matters → Example failure → Suggested fix → Verification**.

### E. Debugging first
When something breaks, do not patch it immediately:

```text
Observe → reproduce → hypothesis → inspect evidence → isolate → fix → verify → prevent regression
```

Ask what I think is happening before revealing the answer.

## Escalating hints — do not hand me the answer

```text
Level 0: question only
Level 1: conceptual hint
Level 2: directional hint
Level 3: pseudocode
Level 4: partial code
Level 5: full solution
```

Move up one level at a time, only when I am genuinely stuck. If I say **"show me the solution"**, give it — then make me reproduce it from scratch afterwards, and do not mark the topic mastered because I saw the answer.

## Active recall

End each topic with a few questions: *why*, *what happens internally*, *what if*, predict-the-output, find-the-bug, compare two approaches, when **not** to use it. Wait for my answers. Score 1–5. For a wrong answer, correct the **mental model**, not just the fact.

**Grade completeness before correctness.** I have a recurring habit of answering only part of a multi-part question — count the clauses, and tell me which ones I skipped before discussing the ones I attempted.

## Spaced revision

```text
same session → next session → 3 sessions later → 1 week later → before the checkpoint
```

Only the questions that are actually useful for retention.

## Version awareness

Before teaching a version-sensitive API: inspect the installed SDK and `pubspec.lock`, state which version the lesson targets, and verify evolving topics against official docs. Never mix Riverpod 2 and Riverpod 3 APIs without saying so. Record anything that changes implementation in the Version Log.

## Security mode

When a topic touches tokens, auth, storage, uploads, WebViews, deep links, payments, native code, background work, signing or releases: review secret handling, token storage, transport security, input validation, authorization boundaries, logging of sensitive data, and the limits of any client-side control. Never normalize an insecure shortcut because it is convenient for a lesson.

## File-edit boundary — mandatory

**Claude never creates or edits files in my learning project. Claude edits only this tracker, unless I explicitly ask.**

Show snippets inline and tell me which file to change; I type it. An explicit request authorizes only that named change, not unrelated cleanup. No destructive or broad mutation commands (`flutter clean`, `pub upgrade`, deleting lockfiles, regenerating code) without explaining the impact and getting approval first. Read-only inspection is always fine.

Never print or commit secrets, signing credentials, tokens or personal data. No paid accounts, billable OTA usage or production credentials without my explicit approval — use the no-cost route instead.

## Session startup

1. Read **Current Position**, **Mistakes Log**, and the latest **Session Log** entry. Not the whole file.
2. Inspect the relevant project files.
3. Tell me: current topic · what I already know · what we learn now · the practical task.
4. Ask a short active-recall question from previous material.
5. Teach one topic-sized unit. Give the exercise. Wait.

## End-of-session format

```text
## Session Result
Topic:              Quiz:
Status:             Implementation:
Explain:    x/5     Main mistake:
Implement:  x/5     Technical debt:
Debug:      x/5     Revision needed:
Apply:      x/5
Defend:     x/5     Next session:
```

Then update this file: topics, mastery, quiz score, mistakes, debt, next action. Preserve history. Never fabricate progress.

---

# The Project — a Flutter client for my own backend

Project-first, like the backend track. One app, extended continuously, instead of ten disconnected toys.

**Target:** a Flutter movie/watchlist client against the Express + MySQL API I built myself in `../backend/`. I own both sides of the contract, I can change the server when the client needs it, and every Flutter concept lands on a real feature instead of a demo.

### The API I already built

```text
POST /auth/register          register                     (public, rate-limited)
POST /auth/login             login → JWT                  (public, rate-limited)
                             ── everything below is behind authMiddelWare ──
GET  /movies                 list, offset pagination, filters + search
GET  /movies/cursor          list, cursor pagination
GET  /movies/:id             detail
POST /movies/:id/poster      multipart image upload
GET  /watchlist              my watchlist (joined movie details)
POST /watchlist/add          add one
POST /watchlist/bulk         add many (transactional)
```

Server: `http://localhost:3000` · docs at `/api-docs` · CORS currently allows `http://localhost:4200` only.

### Flutter learning value of each endpoint

| Endpoint | Teaches |
|---|---|
| `POST /auth/login` | HTTP client, JSON, typed errors, token storage, guarded routes |
| `GET /movies` | lists, lazy building, offset pagination, loading/empty/error states |
| `GET /movies/cursor` | cursor pagination, infinite scroll, stale-response suppression |
| `GET /movies?search=` | debounced search, race conditions, cancellation |
| `GET /movies/:id` | detail routing, hero transitions, caching |
| `POST /watchlist/add` | mutations, optimistic update + rollback, invalidation |
| `POST /movies/:id/poster` | image picking, multipart upload, progress, native permissions |

### Known gaps to close when we get there

- **CORS** allows only `:4200`. Fine for Android/iOS (no CORS), matters for Flutter Web → Phase F10.
- **No refresh-token endpoint** yet — backend Phase Q. Until then the Flutter client handles expiry by logging out.
- **Emulator networking:** `localhost` on an Android emulator is the emulator itself. The host is `10.0.2.2`. First real lesson in F10.

### Architecture — Version 1 (target for Track 2)

```text
Widget
  ↓  watch
Provider / Notifier
  ↓
Repository
  ↓
ApiClient ──→ Express API ──→ MySQL
```

---

# Track 1 — Dart Foundations

The foundation track. No Flutter until Dart is real. Every unit is small on purpose.

## D0. Toolchain & first run
**Status:** `DONE` (2026-10-26) — Explain, Implement and Debug all evidenced; close-out 16/20. Restarted fresh 2026-10-25 at my request. One carry-over task (SDK path) moves to the D1 warm-up.

**Environment facts** — machine state verified by Claude with read-only commands. Not assessment, and not re-done, because re-accepting licences or rebuilding an APK proves nothing about understanding:

- [x] Flutter, Dart, Android Studio, Xcode installed (FVM-managed)
- [x] Android licences accepted; `flutter doctor` Android `[✓]`
- [x] Project exists at `learning/` (`flutter create` scaffold, untouched)
- [x] Android debug APK built — `learning/build/app/outputs/flutter-apk/app-debug.apk`
- [x] `dart format` → 0 changed · `flutter analyze` → no issues

**Learning tasks** — all reset to zero:

- [x] Explain what Dart is, and what Flutter is, in my own words (D0.1 Q1 — 4/5; "package" undersells the engine)
- [x] Explain the four layers: my code → framework → engine → embedder (used correctly in D0.1 Q2/Q3 and close-out Q1/Q2)
- [x] Explain what actually happens when I run `flutter run` (close-out Q2: a Gradle failure means `main()` never ran ✓; didn't say *how I know* — Gradle comes before install and launch)
- [x] Explain which layer fails when one platform's build fails but another succeeds (close-out Q1, iOS signing vs macOS: embedder ✓, each platform has its own native setup ✓ — corrected after two misses)
- [x] Explain why `flutter test` needs no emulator (D0.1 Q3 — skips the embedder ✓)
- [~] Explain every line of my own `main.dart` (D0.2: comments added on 9 of 16 lines; most restate the name — "MainApp constructor", "main function" — rather than say what the line does; `const`, `super.key`, `@override`, `extends`, `BuildContext`, `Center` not covered)
- [x] Explain debug vs profile vs release mode (D0.3: release smaller, no hot reload — `r` absent from the key-command list; why: debug ships the VM and debugging support, release is compiled machine code; debug banner seen only in debug. Profile not run — that belongs to P2)
- [x] Explain hot reload vs hot restart vs a fresh launch (D0.2 lab correct; D0.2 follow-up swapped them; **D0.3 warm-up 5/5**: a global change needs `R` because `main()` must run again, and it's not a native rerun either)
- [~] State my SDK versions and where they resolved from — versions ✓ (pasted twice); **path asked three times, never given** → D1 warm-up. Found while checking: inside `learning/`, plain `flutter` still resolves to `~/fvm/default/bin/flutter` (the global default), **not** the pin
- [x] Commit the baseline — `2a6c9c5`, 65 files under `learning/` (but committed *after* editing, and the message is inaccurate; see review)
- [x] Decide on `.fvmrc` pinning — **pinned** with `fvm use 3.38.3` (`36e2d66`): `.fvmrc` = `{"flutter": "3.38.3"}` committed, `.fvm/` gitignored and untracked, `.vscode/settings.json` points VS Code at `.fvm/versions/3.38.3`
- [x] Diagnose a real error: step b `Invalid constant value (invalid_constant)` — exact message, cause (`const MaterialApp` can't contain a `final` value) and fix (drop that `const`), verified with `r`
- [x] Diagnose why the committed app (`9583fbd`+) fails on a fresh start — exact error captured, fixed, committed (`d7fe14f`). Explanations partial: "it was a runtime issue" (a label, not the mechanism); didn't name `MaterialApp` as the provider of `Directionality`

Evidence (D0.1): `lib/main.dart` 16 lines, no scaffold comments · `flutter analyze` no issues · format 0 changed · fresh `app-debug.apk` 17:38 after the 17:29 edit

Remaining before DONE: explain each line of `main.dart` · `flutter run` walkthrough · debug/profile/release · hot reload vs restart · state SDK versions + path (**skipped in D0.1**) · `.fvmrc` decision · a deliberate failure diagnosed

The four-layer model taught 2026-10-25:

```text
Your Dart code      what the UI should be
      ↓
Flutter framework   widgets, layout, gestures — ordinary Dart, nothing privileged
      ↓
Engine (C++)        rasterizes, text layout, Dart VM, GPU
      ↓
Embedder (native)   Android Activity / iOS UIViewController — owns the window, feeds input
```

Mastery:

```text
[x] Explain    4/5 — D0.1 12/15 · D0.2 11/15 · D0.3 8/10 · close-out 16/20; embedder idea finally landed
[x] Implement  2/5 — small but my own: top-level variable, interpolation, `kReleaseMode` text, SDK pin
[x] Debug      3/5 — two real bugs: `invalid_constant` (analyzer) and missing `Directionality` (runtime), both diagnosed from the error and fixed
[ ] Apply
[ ] Defend
```

---

## D1. Running Dart code — compiler, runtime, and the first program
**Status:** `DONE` (2026-10-26) — Explain, Implement and Debug evidenced. Step D2 (second-input verification) **skipped at my request** ("no need to repeat, move forward"); the expected-value habit stays open in the Mistakes Log. Was split into **D1.1** (compiler vs runtime, JIT vs AOT, first program — issued 2026-10-26) and **D1.2** (error kinds, stack traces, logic bug). The null-dereference item moves to D6, where null safety is taught

This unit also closes the oldest open revision item, carried since the 2026-09-16 baseline.

- [x] Explain what a **compiler** is — D1.1 resubmission 4/5: "a translator; checks the code before converting it into machine code; if there are issues it flags them"
- [x] Explain what a **runtime** is — D1.1 resubmission 4/5: "like the crew backstage; runs all the operations: memory, runtime checks"
- [~] Explain JIT vs AOT, and why debug builds hot-reload but release builds cannot (**resubmission introduced a misconception:** "first time it converts the exe to machine code" — the exe was already machine code, compiled by `dart compile exe`; nothing compiles at launch. Concept otherwise right: JIT on the VM supports hot reload; AOT is compiled up front and uses less. **But my explanation said JIT "took time" while my own single measurement showed AOT slower** — 0.243 s vs 0.572 s — and I didn't notice. Claude re-timed: `dart run` 0.21/0.16/0.17 s; exe 0.01/0.01/0.01 s. The first exe launch carried a one-off cost — hypothesis: macOS checking a brand-new binary)
- [x] Explain the four error kinds — syntax → parser ✓, type → type checker ✓, runtime → RangeError after `'one'` ✓, logic → no error at all, found only by evidence ✓ (Step D1)
- [x] Explain why `int x = "hello";` is a *type* error, not a syntax error (D1.2 Step C: "the parser checks the grammar and the type checker checks the type"; the semicolon "tells the program this instruction ends here" ✓)
- [ ] Explain when a null dereference is compile-time vs runtime under sound null safety
- [x] Create a console project with `dart create -t console` (`dart_basics/`, `0df7aa5`; explained `bin/` = entry point that calls into `lib/`, `lib/` = business logic, `test/` = tests ✓)
- [x] Run it with `dart run`; print a **computed** value (multiples of 7 up to 1000, in `lib/`, called from `bin/` ✓)
- [ ] Read a compile error and locate the line
- [~] Read a runtime stack trace and locate the frame (D1.2 Step 2: fixed `bestRating` — the **cause**, not `pickRating` where it crashed ✓; frame number and the why not written; output after the fix not shown)
- [x] Diagnose a logic bug with the debugging template — reproduced, traced, fixed; verification with an independent second input **skipped at my request** (D1.2 Step D1: bug reproduced, loop printed `i=1…3` showing `ratings[0]` never added ✓, cause named — loop starts at 1, but indexes start at 0 ✓, fixed → 4.0 ✓. **But "expected by hand" was given as 3**, the buggy output, not 16/4 = 4.0. Second-input verification pending)
- [~] Compare: `dart run` vs `dart compile exe` vs how Flutter runs the same language (linked JIT → debug, AOT → release ✓; exe size 5.1 MB not reported)

Carried misconception to correct (from 2026-10-25): compile-time examples were all *syntax* errors. Syntax errors and type errors are both compile-time but come from different stages — parser, then type checker. → ✅ Corrected in D1.2 Step C.

Mastery:

```text
[x] Explain    4/5 — compiler/runtime defined; parser vs type checker; AOT proven by experiment
[x] Implement  3/5 — multiples-of-7, averageRating, bestRating fix — all my own code in lib/ called from bin/
[x] Debug      3/5 — cause vs crash site (bestRating); logic bug traced with prints. Expected value wrong once (3 vs 4.0)
[ ] Apply
[ ] Defend
```

---

## D2. Values, variables and types
**Status:** `DONE` (2026-10-27) — close-out 17/20 (85%). Delivered one step per message (7 steps + close-out). Step 1 issued 2026-10-26 (`final` vs `const`, binding vs mutation; verified on Dart 3.10.1: `final` list `.add` OK; `const` list `.add` passes the analyzer and fails at runtime with *Unsupported operation: Cannot add to an unmodifiable list*; reassigning `final` → `assignment_to_final_local`; `const now = DateTime.now()` → `const_initialized_with_non_constant_value`)

- [x] Values vs variable bindings vs assignment (Steps 1, 5, 7)
- [x] `var`, explicit types, type inference (D2 Step 3: "var permanently keeps the type… int" ✓; no initializer → `dynamic` ✓)
- [x] `final` — prevents **rebinding**, not mutation of the referenced object (D2 Step 1: "we can mutate the thing if it's mutable but can't assign a new value")
- [x] `const` — compile-time constant; how it differs from `final` (Step 1 ✓; Step 2: Block 2 = runtime, Block 4 = compile-time ✓. *Why* the analyzer misses Block 2 given as a label — "it can't find runtime issues"; the mechanism was explained to me)
- [x] A variable is a binding; two bindings can reference one mutable object (name-tag model used correctly in Steps 1 and 7)
- [~] `int`, `double`, `num`, `String`, `bool` (D2 Step 4: `/` → double ✓ (but predicted `4 / 2` = `2`), `~/` discards decimals ✓ (it truncates toward zero, so it's not quite floor: `-5 ~/ 2` = `-2`); `double d = 5;` predicted to fail — it works (literal becomes 5.0); line 6 category ✓, direction reversed. `String` and `bool` not yet covered)
- [~] `dynamic` vs `Object` vs `Object?` vs `void` vs `Never` (Step 3: `dynamic` skips checks → runtime NoSuchMethodError ✓; `Object` → compile error ✓, but reasoned "int can't have length" — the analyzer only sees the **declared** type `Object`, not the int inside. `Object?` moves to D6 (null safety), `void` and `Never` to D4 (return types))
- [x] Strings: interpolation, raw strings, multiline (D2 Step 6: `$name.length` → "only name, needs `{}` for an expression" ✓; raw ✓; multiline ✓ — called them "backticks" (TS word; Dart uses `'''`); my output showed `  Line two` indented, because triple-quoted strings keep the source indentation)
- [x] Scope and shadowing (D2 Step 7: inner `var name` shadows, outer unchanged ✓; without `var` the outer changes ✓; block-local after its block → compile error ✓; the analyzer doesn't warn ✓. Called main's variable "global" — it's local to `main`; a global is top-level, like `final name` in `learning/lib/main.dart`)
- [x] Static vs dynamic typing; what the analyzer checks before you run (Steps 2–3: analyzer checks declared types, not particular objects; `dynamic` switches checking off)
- [x] Exercise: predict which of four `final`/`const` lines compile, and why (Steps 1–2)
- [x] Exercise: mutate a list held by a `final` binding; explain why it is allowed (Step 1 Block 1)

Closes three baseline misconceptions: `final` vs `const`, binding vs mutation, variable-as-container. → ✅ All three corrected.

Mastery:

```text
[x] Explain    4/5 — final/const, binding vs mutation, inference, dynamic vs Object, scope — mechanism-style reasons from Step 3 on
[x] Implement  2/5 — small: two fixes for the int→double error (toDouble, retype), strings, scope experiments
[x] Debug      3/5 — classified every block as works/compile/runtime from real output; fixed invalid_assignment two ways
[ ] Apply
[ ] Defend
```

---

## D3. Control flow
**Status:** `IN PROGRESS` — Step 1 issued 2026-10-27 (anatomy of `for`; a non-numeric `for` loop; rewrite my multiples-of-7 loop as a `while`, with the count — 142 — stated from the definition *before* running. Verified on 3.10.1: `for (var word = 'J'; word.length < 4; word = word + 'a')` prints `J`, `Ja`, `Jaa`)

- [~] `if` / `else`, boolean logic, guard clauses (Step 5 guard shape ✓; **Step 5b fixed the design**: `double` again, `if (ratings.isEmpty) return 0.0;`, `print` back in `bin/` ✓. Boolean operators and else-if chains → the combined D3 lesson)
- [x] Basic `switch` statements (D3 exercise: `starName` with grouped `case 1: case 2:` and `default` ✓; close-out Q2: prints only `four` ✓)
- [~] `while`, `do-while` (Step 1 `while` rewrite ✓. **`do-while` ✗**: close-out Q3 said a `do-while` whose condition is false from the start runs forever — it runs once)
- [~] `for` — **it has a condition**; it is not inherently a "numeric" loop (Step 1: explained the string `for` loop by its condition ✓. Step 2: "what for and while share" still framed around `i++`/1000 → model statement given; recheck at the D3 close-out)
- [x] `for-in` over an iterable (D3 Step 4: `averageRating` rewritten with `for (var rating in ratings)`, debug print removed, analyze clean, 4.0 ✓. Bonus answered well — index loop when you need the position. Said `for-in` works on a Map: **it doesn't** — `for_in_of_invalid_type`; use `.entries`/`.keys`/`.values`)
- [x] `break`, `continue` (close-out Q4 5/5; used both correctly in `validAverage`)
- [x] Off-by-one errors — build one deliberately, then fix it (D3 Step 3: `i < 20` → 190, `i <= 20` → 210, matching the expected 210; explained "20 was missing because `i < 20` stops at 19"; used `total += i` on my own)
- [~] Infinite loops — cause one deliberately, then explain the cause (Step 2: removed `i++`, ran forever ✓; cause not tied to the condition — `i` stays 1, so `i <= 1000` is always true)
- [x] Exercise: rewrite a `for` as a `while` and prove they are equivalent (Step 1: same 142 from both)

Closes the baseline misconception: "`for` is numeric, `while` is conditional."

---

## D4. Functions
**Status:** `TODO`

- [ ] Declaration, parameters, arguments, return values
- [ ] Positional vs named parameters
- [ ] Optional parameters and defaults; `required`
- [ ] Arrow (`=>`) functions
- [ ] Anonymous functions and closures
- [ ] Functions as values; passing callbacks
- [ ] What a closure captures, and when that leaks
- [ ] Exercise: write a function that takes a function and returns a function

---

## D5. Collections
**Status:** `TODO`

- [ ] `List` — ordered, indexed
- [ ] `Set` — unique, unordered
- [ ] `Map` — key/value
- [ ] `Iterable` and laziness; why `.map()` does nothing until iterated
- [ ] `map`, `where`, `firstWhere`, `fold`, `reduce`, `any`, `every`
- [ ] Spread (`...`), collection-`if`, collection-`for`
- [ ] Choosing the right collection for a job
- [ ] Linear search vs hash lookup — Big-O intuition
- [ ] Exercise: same task with `List.contains` and a `Set`; reason about the cost difference

---

## D6. Null safety
**Status:** `TODO`

- [ ] Nullable (`String?`) vs non-nullable (`String`)
- [ ] `?.`, `??`, `??=`
- [ ] `!` — and why using it to silence the analyzer is a bug waiting to happen
- [ ] `late` — what it promises and how it fails
- [ ] Flow analysis and promotion
- [ ] Why most null errors are caught before you run
- [ ] Exercise: three ways to make a null error survive to runtime; explain each

---

## D7. Classes and objects
**Status:** `TODO`

- [ ] Class vs object vs instance
- [ ] Fields, methods, constructors
- [ ] Named constructors; factory constructors
- [ ] Initializer lists; `this`
- [ ] Getters and setters
- [ ] `static` members
- [ ] Private members (`_`) are **library**-private, not class-private
- [ ] Exercise: model a `Movie` matching my backend's model

---

## D8. Inheritance, interfaces, mixins, composition
**Status:** `TODO`

- [ ] `extends` and method overriding; `super`
- [ ] Abstract classes
- [ ] `implements` — every Dart class is an implicit interface
- [ ] `mixin` and `with`
- [ ] Composition vs inheritance — prefer composition, and know why
- [ ] Exercise: solve one problem twice, once each way; defend the choice

---

## D9. Generics
**Status:** `TODO`

- [ ] Generic classes and functions
- [ ] Type bounds (`<T extends Something>`)
- [ ] Why `List<Movie>` beats `List<dynamic>`
- [ ] Exercise: a typed `Result<T>` container (groundwork for D11 and F12)

---

## D10. Equality, immutability and value objects
**Status:** `TODO`

- [ ] Identity vs value equality
- [ ] `==` and `hashCode` — always override together
- [ ] Immutable data classes; `const` constructors
- [ ] `copyWith`
- [ ] Why immutable state matters for Flutter rebuilds (forward link to F3/F13)
- [ ] Exercise: put two "equal" objects in a `Set`; explain the count before running it

---

## D11. Errors and exceptions
**Status:** `TODO`

- [ ] `throw`, `try`, `catch`, `on`, `finally`, `rethrow`
- [ ] `Exception` vs `Error` — expected failure vs programmer bug
- [ ] Custom exception types
- [ ] Stack traces: reading and preserving them
- [ ] Why an empty `catch {}` is almost always wrong
- [ ] Expected failure as a **return value** vs an exception
- [ ] Exercise: port the `AppError` idea from my backend into Dart; compare the two designs

---

## D12. Modern Dart — records, patterns, sealed classes
**Status:** `TODO`

- [ ] Records and named record fields
- [ ] Destructuring
- [ ] Pattern matching; `if-case`
- [ ] Switch **expressions** and exhaustiveness
- [ ] `sealed` classes; why the compiler can then prove you handled every case
- [ ] Class modifiers: `base`, `final`, `interface`
- [ ] Enhanced enums
- [ ] Extension methods — and when not to
- [ ] `typedef`
- [ ] Exercise: model loading / data / empty / error as a sealed type; let the compiler catch a missing branch

---

## D13. Async part 1 — Futures and the event loop
**Status:** `TODO`

Bridge: I have already demonstrated this model in Node (microtasks vs macrotasks, `process.nextTick`). Dart is close but **not identical** — Dart has exactly two queues and no `nextTick`.

- [ ] `Future` — what it is, and how it differs from a JS `Promise`
- [ ] `async` / `await`
- [ ] Dart's event loop: **microtask queue** vs **event queue**
- [ ] Why the microtask queue is fully drained before the next event
- [ ] Compare directly with the Node model I already know
- [ ] `Future.wait`, `Future.any`
- [ ] Timeouts
- [ ] Error propagation through `await`; `try`/`catch` around async
- [ ] Why `async` alone does **not** make CPU work parallel
- [ ] Stale results and cancellation concepts
- [ ] Exercise: predict the print order of a sync/microtask/event mix — before running it
- [ ] Exercise: a race where a slow earlier request overwrites a fast later one; then fix it

---

## D14. Async part 2 — Streams
**Status:** `TODO`

- [ ] `Stream` vs `Future` — many values over time vs one
- [ ] `StreamController`
- [ ] Single-subscription vs broadcast
- [ ] `listen`, subscriptions, and **cancelling** them
- [ ] `async*` and `yield`; `await for`
- [ ] Transformations: `map`, `where`, `distinct`
- [ ] Error events and completion
- [ ] Debounce and throttle
- [ ] Leaked subscriptions — cause one, then find it
- [ ] Exercise: a debounced search stream (direct groundwork for F16)

---

## D15. Isolates and the memory model
**Status:** `TODO`

- [ ] Isolates have **separate memory** — the big difference from JS workers
- [ ] `Isolate.run` for one-shot CPU work
- [ ] `SendPort` / `ReceivePort`
- [ ] What can and cannot be sent
- [ ] Why CPU-heavy work on the UI isolate drops frames
- [ ] Garbage collection basics; object lifetime
- [ ] Exercise: measure a heavy JSON parse on the main isolate, then with `Isolate.run`; report both numbers

---

## D16. Testing with `package:test`
**Status:** `TODO`

- [ ] Why automated tests exist: input → action → expected result
- [ ] `test`, `group`, `expect`, matchers
- [ ] Arrange–Act–Assert
- [ ] Boundary and negative cases
- [ ] Reading a failed assertion — and distinguishing it from a compile error
- [ ] Keeping tests off the network, disk and wall clock
- [ ] Fakes for deterministic behaviour
- [ ] Exercise: retrofit tests onto the D11 error layer, then break the implementation on purpose and read the failure

---

## D17. Track 1 checkpoint
**Status:** `TODO`

- [ ] **Concepts** (10 Q) — target ≥80%
- [ ] **Debugging** (3 realistic bugs) — identify root cause, not just the fix
- [ ] **Implementation** — a small console app from a blank file: a typed domain model, a sealed result type, an async fetch with a simulated failure, and tests
- [ ] **Architecture** — one design trade-off defended out loud
- [ ] **Interview** (3 Q)

Gate: no Flutter widgets until this passes. Passing needs concepts ≥80%, a working implementation, and root-cause identification on the debugging set.

---

# Track 2 — Flutter Build

Each topic lands on the movie/watchlist client. Nothing here is a throwaway demo.

## F1. From Dart to a frame
**Status:** `TODO`

- [ ] Widget tree vs element tree vs render tree — why three
- [ ] `runApp` as the handoff point
- [ ] What `build()` means: describing UI, not mutating pixels
- [ ] Declarative vs imperative UI
- [ ] `const` widgets and why they matter
- [ ] Debug vs profile vs release mode
- [ ] Hot reload vs hot restart vs a fresh launch — and why release has neither
- [ ] Exercise: strip the counter scaffold to a bare `MaterialApp` written from scratch

## F2. Stateless widgets and composition
**Status:** `TODO`

- [ ] `StatelessWidget`
- [ ] Constructor parameters; `const` constructors
- [ ] Composition over configuration — small widgets, not big ones
- [ ] `BuildContext` — what it is and its lifetime limits
- [ ] Exercise: a `MovieCard` matching my backend's movie shape

## F3. Stateful widgets and lifecycle
**Status:** `TODO`

- [ ] `StatefulWidget` vs `State` — why they are two objects
- [ ] `setState` and what it actually marks dirty
- [ ] `initState`, `didChangeDependencies`, `didUpdateWidget`, `dispose`
- [ ] Widget identity and reconciliation
- [ ] `Key`, `ValueKey`, `ObjectKey`, `UniqueKey`, `GlobalKey`
- [ ] Keyed list reordering — break it without keys first
- [ ] Disposing controllers, timers and subscriptions
- [ ] Exercise: a reorderable list that loses state without keys; fix it and explain

## F4. Layout and constraints
**Status:** `TODO`

- [ ] "Constraints go down, sizes go up, parent sets position"
- [ ] `Row`, `Column`, `Expanded`, `Flexible`
- [ ] `Container`, padding, alignment
- [ ] `Stack` and positioning
- [ ] Diagnose a render overflow — cause one first
- [ ] `LayoutBuilder` and `MediaQuery`
- [ ] Why intrinsic sizing is expensive
- [ ] Exercise: the movie detail layout, working at phone and tablet width

## F5. Lists and scrolling
**Status:** `TODO`

- [ ] `ListView` vs `ListView.builder` — lazy construction
- [ ] Why `.builder` matters at 10,000 items
- [ ] `GridView`
- [ ] `ScrollController` and scroll position
- [ ] Pull-to-refresh
- [ ] Basic slivers: `CustomScrollView`, `SliverAppBar`
- [ ] Exercise: the movie list, lazily built

## F6. Theming and a reusable UI kit
**Status:** `TODO`

- [ ] `ThemeData`, Material 3, colour schemes from a seed
- [ ] Typography and design tokens
- [ ] Dark mode
- [ ] Assets in `pubspec.yaml`; images and resolution variants
- [ ] Reusable button, field, loading, empty and error views
- [ ] Exercise: one shared UI kit the whole app uses

## F7. Widget testing
**Status:** `TODO`

- [ ] `testWidgets`, `WidgetTester`, `pumpWidget`
- [ ] `pump` vs `pumpAndSettle` — and when settling hangs forever
- [ ] Finders: `find.text`, `find.byType`, `find.byKey`
- [ ] `tap` and `enterText`
- [ ] Test observable behaviour, not private internals
- [ ] Diagnose a failing expectation
- [ ] Exercise: two tests on the `MovieCard` — a visible state and an interaction

## F8. Forms, validation and focus
**Status:** `TODO`

- [ ] `Form`, `FormField`, `TextEditingController`
- [ ] Validation and submission state
- [ ] `FocusNode`, keyboard behaviour, field traversal
- [ ] Disposing controllers and focus nodes — leak one first
- [ ] Exercise: the login form, validated, nothing wired yet

## F9. Navigation
**Status:** `TODO`

- [ ] `Navigator` and the route stack
- [ ] Passing data to a route and getting a result back
- [ ] Named and declarative routing; a router package
- [ ] Guarded routes — the shape auth will need
- [ ] Dialogs, bottom sheets, modal routes
- [ ] Exercise: list → detail → back, with the movie id passed properly

## F10. Networking — talk to my own backend
**Status:** `TODO`

First contact between the two tracks.

- [ ] HTTP basics in Dart; `http` vs `dio`
- [ ] **Android emulator networking: `10.0.2.2`, not `localhost`** — diagnose this failure deliberately
- [ ] Base URL configuration per environment
- [ ] `POST /auth/login` end to end
- [ ] Reading status codes and the backend's `{ statusCode, message }` error shape
- [ ] Timeouts and cancellation
- [ ] Interceptors for shared headers
- [ ] Never logging tokens or credentials
- [ ] CORS: why Android/iOS do not care and Flutter Web does
- [ ] Exercise: log in against the real server; show success and a wrong-password failure

## F11. JSON and typed models
**Status:** `TODO`

- [ ] `jsonDecode` and why it returns `dynamic`
- [ ] Hand-written `fromJson` / `toJson` first — before any generator
- [ ] DTO vs domain model
- [ ] Parsing a list response
- [ ] Null and missing-field handling against real server data
- [ ] `json_serializable` / Freezed and `build_runner` — only after the manual version
- [ ] Exercise: `Movie` and `User` models parsed from actual API responses

## F12. Loading, empty, error — states as a type
**Status:** `TODO`

- [ ] Every async screen has four states: loading, data, empty, error
- [ ] The sealed result type from D12 applied to UI
- [ ] Mapping API errors to messages a user can act on
- [ ] Retry
- [ ] Exercise: the movie list correct in all four states, each one provable

## F13. Riverpod from zero
**Status:** `TODO`

- [ ] Why global state and `setState` stop scaling
- [ ] Providers as declared dependencies
- [ ] `Provider`, `FutureProvider`, `StreamProvider`
- [ ] `Notifier` and `AsyncNotifier`
- [ ] `ref.watch` vs `ref.read` vs `ref.listen` — and `select`
- [ ] Provider lifecycle, `autoDispose`, invalidation
- [ ] Families
- [ ] Overrides for dependency injection
- [ ] **Verify the installed Riverpod major version first** — do not mix 2 and 3 APIs
- [ ] `ProviderContainer` in tests; override the repository with a fake
- [ ] Exercise: move the movie list onto Riverpod; test loading → data → error

## F14. Auth flow end to end
**Status:** `TODO`

- [ ] Where a JWT lives on device; why `SharedPreferences` is the wrong place for it
- [ ] A `TokenStore` interface with an in-memory fake (real secure storage lands in P4)
- [ ] Attaching the bearer token via an interceptor
- [ ] Guarded routes and login redirect
- [ ] Expiry → logout (no refresh endpoint on the backend yet — backend Phase Q)
- [ ] Clearing all state on logout
- [ ] Exercise: login → guarded catalogue → logout, with expiry proven by a test

## F15. The movie list with offset pagination
**Status:** `TODO`

- [ ] `GET /movies` with page and limit
- [ ] Infinite scroll
- [ ] Appending without duplicating
- [ ] Loading indicator at the tail; end-of-list state
- [ ] Error on page 3 — recover without losing pages 1 and 2
- [ ] Exercise: paginate the real catalogue

## F16. Cursor pagination, search and filters
**Status:** `TODO`

- [ ] `GET /movies/cursor` — why cursors beat offsets on a changing table
- [ ] Debounced search against `GET /movies?search=`
- [ ] **Stale-response suppression** — the race from D13, now for real
- [ ] Filter and sort state in the URL/provider
- [ ] Exercise: prove with a test that a slow earlier search cannot overwrite a newer one

## F17. Watchlist mutations
**Status:** `TODO`

- [ ] `POST /watchlist/add` and `GET /watchlist`
- [ ] Optimistic update and rollback on failure
- [ ] Invalidating dependent providers after a mutation
- [ ] Why retrying a non-idempotent POST blindly is dangerous
- [ ] `POST /watchlist/bulk` and partial failure
- [ ] Exercise: add/remove with optimistic UI; force a server failure and prove the rollback

## F18. Images and upload
**Status:** `TODO`

- [ ] Network images, caching, placeholders, error fallbacks
- [ ] Image sizing and decode cost
- [ ] Picking an image from the device
- [ ] `POST /movies/:id/poster` as multipart
- [ ] Upload progress and cancellation
- [ ] File type and size validation **before** upload
- [ ] Exercise: upload a poster and see it come back in the list

## F19. Local persistence and offline reads
**Status:** `TODO`

- [ ] `SharedPreferences` for non-sensitive settings only
- [ ] SQLite/Drift basics
- [ ] Cache-aside; stale-while-revalidate
- [ ] Cache invalidation after a mutation
- [ ] Offline reads of a cached catalogue
- [ ] Exercise: the list renders from cache with the network off

## F20. Track 2 checkpoint
**Status:** `TODO`

- [ ] **Concepts** (10 Q) — target ≥80%
- [ ] **Debugging** (3) — a rebuild bug, a layout overflow, a stale async response
- [ ] **Implementation** — one new screen against the real API, from a blank file
- [ ] **Architecture** — defend the state-ownership boundaries
- [ ] **Interview** (3 Q)

---

# Track 3 — Production

## P1. Accessibility, adaptive layout, i18n
**Status:** `TODO`

- [ ] `Semantics`, labels, merging
- [ ] TalkBack / VoiceOver on a real flow
- [ ] Contrast, touch targets, text scaling, reduced motion
- [ ] Keyboard navigation and focus traversal
- [ ] Phone / tablet / foldable / desktop and window resize
- [ ] RTL and directionality
- [ ] Localization delegates, plurals, locale-aware dates and numbers

## P2. Performance and DevTools
**Status:** `TODO`

- [ ] Render pipeline: build → layout → paint → composite → rasterize
- [ ] UI thread vs raster thread
- [ ] Frame budget
- [ ] DevTools performance view and frame chart
- [ ] CPU profiler; memory view; leak inspection
- [ ] Rebuild tracking, repaint rainbow, `RepaintBoundary`
- [ ] Image decode and cache tuning
- [ ] Avoiding needless `saveLayer`, opacity and clips
- [ ] **Measure → change → measure again.** No claim without numbers
- [ ] Exercise: profile the real movie list; fix the dominant cost; report before/after

## P3. Advanced testing
**Status:** `TODO`

- [ ] Integration tests for the login → browse → add-to-watchlist journey
- [ ] Golden tests across themes and sizes
- [ ] Contract tests against the backend's OpenAPI document
- [ ] Fakes, fake clocks, `FakeAsync`
- [ ] Flaky-test diagnosis and isolation
- [ ] Coverage as a signal, never as proof

## P4. Native integration
**Status:** `TODO`

- [ ] Android manifest, iOS `Info.plist`, permissions
- [ ] **Real secure storage and platform key-stores** — replaces the F14 fake
- [ ] App lifecycle and process death
- [ ] `MethodChannel` and `EventChannel`
- [ ] Camera, file picker, share sheet
- [ ] Notifications and navigation from a terminated app
- [ ] Background execution limits on each OS

## P5. Real-time
**Status:** `TODO` — pairs with backend Phase S

- [ ] WebSocket lifecycle, heartbeat, reconnect with backoff
- [ ] Socket.IO client against my own server
- [ ] Handshake auth with the JWT
- [ ] Rooms and events
- [ ] Missed events and reconciliation after reconnect
- [ ] Duplicate and out-of-order delivery
- [ ] Disposing subscriptions on every exit path

## P6. Security review
**Status:** `TODO`

- [ ] Token lifecycle, rotation, logout, expiry recovery
- [ ] TLS and certificate pinning trade-offs
- [ ] Deep-link validation and open-redirect threats
- [ ] Secrets in an APK/IPA — what a client can never keep
- [ ] Sensitive logging and redaction
- [ ] Server-side authorization as the only real boundary
- [ ] Threat-model the whole client

## P7. CI/CD and release
**Status:** `TODO`

- [ ] GitHub Actions: format, analyze, test on every PR
- [ ] Pinned SDK versions in CI
- [ ] Flavors and build configuration
- [ ] Versioning, `version+buildNumber`, tags
- [ ] Android: AAB, keystore handling, signing from CI without committing secrets
- [ ] iOS: certificates, provisioning, archive, TestFlight
- [ ] Obfuscation and keeping symbol files
- [ ] OTA patching (Shorebird): what can be patched vs what needs a store release
- [ ] Staged rollout, monitoring, and honest rollback limits
- [ ] **No paid account or billable usage without explicit approval** — the no-cost route is a local artifact plus a documented upload stage

## P8. Observability
**Status:** `TODO`

- [ ] Crash reporting, symbolication, deobfuscation files
- [ ] Structured logging with request IDs, privacy-safe
- [ ] Performance monitoring
- [ ] Correlating a crash to a build
- [ ] Alert thresholds without noise
- [ ] Incident triage and postmortem

## P9. Capstone
**Status:** `TODO`

Promote the movie/watchlist client to production quality: auth with expiry handling, offline-first catalogue with a sync queue, poster upload, real-time updates, accessible and localized UI, full test pyramid, CI gates, a signed Android build, documented release and rollback, and an architecture-decision record.

### Final competency test
- [ ] Explain the architecture without reading the source
- [ ] Build one feature from a blank file with no AI-written implementation
- [ ] Debug an injected rendering or state bug
- [ ] Debug an injected async/network bug
- [ ] Diagnose a performance trace and justify a measured fix
- [ ] Find a security flaw and name the correct trust boundary
- [ ] Decide store release vs OTA patch for a given change
- [ ] Answer architecture questions with trade-offs, not slogans

---

# Quiz History

> **Cleared 2026-10-25 at my request.** All prior scores (the 2026-09-16 baseline of 31/50 and the 2026-10-25 D0 quiz) were deleted and the track restarted from D0. No score here carries forward from before that date.

| Date | Track | Topic | Score | Weak Areas | Action |
|---|---|---|---:|---|---|
| 2026-10-27 | 1 | **D2 close-out** | 14/20 (70%) — not passed | Q1 1/5: described an index error, but there's no index — line X (`add`) works, line Y (reassign a `final`) is a compile error; which line wasn't named. Not run, though the question said to run if unsure. Q2 5/5. Q3 4/5: compile/type error and fix ✓, **the value of 7 / 2 (3.5) skipped** — the expected-value check. Q4 4/5: `R` ✓, but explained via `main()` rather than "globals are set once and hot reload doesn't reset them"; "hot refresh" again | Run Q1, give 3.5, then re-grade | ⚠️ *Not written in this Claude session — arrived via my commit `92bd611`. The D2 close-out graded here scored 17/20 (next row), and D2's `DONE` is based on that attempt. Both rows kept until I say which stands.* |
| 2026-10-27 | 1 | **D3 close-out** | 18/25 (72%) — not passed | Q1 5/5 (misconception corrected). Q2 4/5: prints `four` ✓, but said "doesn't require return" — it's `break`/no fallthrough. **Q3 1/5**: said the `do-while` runs forever — the condition `3 > 5` is false, so it runs once. Q4 5/5. Q5 3/5: `r > 1 && r < 5` is wrong (it means valid, and excludes 1 and 5); `![1,2,3,4,5].contains(r)` ✓. **Exercise**: `validAverage([4,0,5,9,3,-1,2])` → 1.714 — divides by all 7 items instead of the 3 valid ones (should be 4.0); no expected values written; committed with the bug; `ratingLabel(3.0)` not tested (tested 3.8); debug print left in. Template not used | Remediation: fix by debugging, re-answer Q3/Q5 |
| 2026-10-27 | 1 | D3 Step 5b — guard clause redesign | 3/4 | `double` restored, `[]` → `0.0`, print moved to `bin/` ✓, analyze clean. New list `[1..5]`: expected 3 → actual 3.0 ✓ (**expected stated** this time). Reason for 0.0 in a movie app not given; `[]` output not shown; `bin/` label still says "Total" | — |
| 2026-10-27 | 1 | D3 Step 5 — guard clause | 2/4 | Guard clause written correctly ✓. **New list `[1,2,3,4,5]` → 3.0** ✓ — first time a fresh list was used (but the expected value wasn't written down first). `[]` output not reported (with `void` it prints nothing). Design: considered "return 0" but chose `void` + `print` inside the function — P1: callers can no longer get the number, and an empty list is now silent | Step 5b |
| 2026-10-27 | 1 | D3 Step 4 — for-in | 3/4 | Rewrite correct and clean ✓, bonus ✓ ("for operations on the index, a for loop is better"). Code not pasted. **"My own list" reused `[4,3,5,4]`** — the independent expected value skipped again. Factual slip: `for-in` over a Map is a compile error | — |
| 2026-10-27 | 1 | D3 Step 3 (re-issued) — off-by-one | 3/3 | All three lines from real output ✓: 190 / 210 / `<=`. Code clean — a running total with `total += i`. 190 = 210 − 20, consistent with the missing 20 | — |
| 2026-10-27 | 1 | D3 Step 3 — off-by-one | 1/4 lines | "20 was missing because `i < 20` stops at 19" ✓ — correct and clear. Expected sum **not given** (pair count muddled: "20 pairs… 19 pairs"; it's 10 pairs × 21 = 210). Lines 2–3 answered "done", but the code **prints pairs and counts loop rounds** (`s++` → 19) instead of summing, and is still `i < 20` — no fix exists. My hint (pair the numbers) was meant for the hand calculation and got coded instead — partly my wording | Re-issued with a clearer split between arithmetic and code |
| 2026-10-27 | 1 | D3 Step 2 — infinite loop | 2.5/5 | Ran it, "stuck forever" ✓, condition not mentioned. "Why `for` makes it harder": said a `for` without all three parts gives an error — **wrong**: `for (var i = 1; i <= 3;)` and `for (;;)` compile (verified); the real benefit is that the step sits in the header next to the condition. Common ground partly — still framed around `i++` and 1000 | Model statement given |
| 2026-10-27 | 1 | D3 Step 1 — for as while | 3/4 lines | Word loop output + reason ✓. `while` rewrite correct ✓, `.length` 142 ✓. Expected count 142 ✓ **— first time the value was given**, but the "how" restated the code's own `i % 7 == 0` test instead of an independent count (1000 ÷ 7 = 142.8 → 142). **"What for and while have in common" — not answered** (the misconception line) | Re-asked in Step 2 |
| 2026-10-27 | 1 | **D2 close-out** | 17/20 | Q1 4/5: reassigning `final` is a compile error ✓ plus a mutation workaround ✓, but **didn't name the line** (Y) and wrote "we can't mutate" (meant *can*). Q2 5/5. Q3 4/5: compile/type error ✓, fix ✓, **value of `7 / 2` (3.5) not given**. Q4 4/5: `R` ✓, reload only reruns `build` ✓ — but put the global "in main"; it's top-level, initialized once at startup | Expected-value item stays open |
| 2026-10-27 | 1 | D2 Step 7 — scope and shadowing | 5/5 | **Every blank filled, every answer from a real run** — the first fully complete reply. Mechanism-style reasons ✓. Term: called `main`'s variable "global" (it's local to `main`) | — |
| 2026-10-27 | 1 | D2 Step 6 — strings | 4/4 | All four outputs from a real run ✓, A explained with the fix ✓. "Matched my prediction?" not answered. Called `'''` "backticks" — a TypeScript habit | — |
| 2026-10-27 | 1 | D2 Step 5 — run + fix | 3/4 | Line 2 run → `2.0` ✓. Fix 1 `i.toDouble()` → `5.0` ✓. Fix 2 `int e = i` → `5` ✓ (valid, but it changes what `e` can hold; `num e = i` keeps decimals possible). **Line 5 never observed** — `d` is never printed. Said analyze had "no issues" — it reports 2 warnings (`unused_local_variable` for `x` and `d`) | — |
| 2026-10-27 | 1 | D2 Step 4 — numbers | 3.5/6 | 1 ✓, 3 ✓, 4 ✓ with mechanism. **2 ✗**: said `2` — contradicts my own line 4 reason ("`/` gives a decimal even when it divides evenly") → `2.0`. **5 ✗**: said a double can't hold an int — an int *literal* is allowed (`5.0`). 6: compile error ✓, but said "int can't hold double" — reversed (it's an int value into a double variable) and "inference" is the wrong word. **Predicted only; never ran**, which would have caught 2 and 5 | Step 5: run, then fix |
| 2026-10-27 | 1 | D2 Step 3 — var / dynamic / Object | 17/20 | **All four with reasons that name what the analyzer sees** — the label→mechanism drill worked first time. A 5/5, B 5/5, C 4/5. D 3/5: right category, but said the analyzer rejects it because "int can't have length" — it rejects it because the declared type is `Object` (it would reject `Object d = 'hello'; d.length` too) | `Object` vs declared type → recheck in D9/D12 |
| 2026-10-27 | 1 | D2 Step 2 — classify the 4 blocks | 4/5 | All four categories correct: works / runtime / compile / compile ✓ — closed Step 1's gap. Step 2's lines: what `dart analyze` said and what printed before the error **not given**; "why the analyzer can't catch it" answered with a label again ("it can't find runtime issues") | Mechanism explained; transfer question in D2 Step 3 |
| 2026-10-27 | 1 | D2 Step 1 — `final` vs `const` | 4/5 | Block 1 works ✓; Block 3 — rebinding vs mutation in my own words ✓ (**baseline misconception corrected**); Block 4 ✓. Asked for *work / compile error / runtime error* + predicted vs actual — I gave explanations instead, so **when** Block 2 fails (runtime, after Block 1 printed; analyzer silent) wasn't stated. Ran Blocks 1–2 in `bin/` | Step 2 |
| 2026-10-26 | 1 | D1.2 Step D1 — logic bug | 3/5 | Actual ✓, "no error — it's a logic bug" ✓, loop trace ✓, cause and fix ✓. **Expected value wrong (3, should be 4.0)** — it matched the buggy output, which would have let the bug through. "Which output line proves it": pointed at the code, not at the output (the trace never shows `i=0` / the 4) | Independent expected values, D2 |
| 2026-10-26 | 1 | D1.2 Step C — syntax vs type | 4/5 | All 3 answered ✓. Parser = grammar, type checker = types ✓. "Why both are compile-time" a bit circular ("it checks at compile time") — better: both can be seen from the source alone, without running anything. Slip: "can't give an int to a string" — it's reversed | — |
| 2026-10-26 | 1 | D1.2 — error kinds, traces, logic bug | partial | Template not used (≈5 of 18 blanks). Warm-up ✗: "compiled on first launch" (misconception persists) + "A = ahead" (half). Predict: spotted the skipped first element by reading, but expected value and "any error?" unanswered. Step 1: both analyzer lines ✓, explanation ✗. Step 2: fix in the right function ✓. **Step 3 ✗ not attempted.** | Switch to one step per message |
| 2026-10-26 | 1 | D1.1 resubmission | ~3.5/5 avg | Definitions 4/5 + 4/5 — **the 2026-09-16 item finally answered**. A: no run ✓, analyzer catches `invalid_assignment` ✓, *why* garbled ("int x can be a string"). B: `'one'` prints then RangeError ✓, analyzer can't ✓ (label only). Timing reason 2/5: claimed the exe compiles on first launch. Blanks left: warm-up output, exe size, exact B error, gitignore, commit | AOT correction rechecked at the start of D1.2 |
| 2026-10-26 | 1 | D1.1 — compiler vs runtime, JIT vs AOT | partial | Warm-up 3/5: global ✓, proving command missing. Section C: stages right for A (compile) and B (runtime), but **whether `'one'` printed** — the point of the prediction — the exact errors and the `dart analyze` results are missing. Timing explanation contradicted my own numbers. **Compiler and runtime definitions not answered** | Resubmit via the template |
| 2026-10-26 | 1 | **D0 close-out** | 16/20 + tasks 2/3 | Q1 4/5 embedder ✓ (first time). Q2 4/5: `main()` never ran ✓, *how I know* missing. Q3 4/5: `R` ✓, but the second sentence said "hot reload… starts main again". Q4 4/5: right question to ask, measured numbers not used. Task 5 SDK path ✗ (third time). Pin ✓, commits ✓ | Path → D1 warm-up |
| 2026-10-25 | 1 | D0.3 — finish (size reason, on-screen result) | 8/10 | Q1 4/5: debug carries the VM and debugger ✓, but "release only carries the code" forgets the 10.6 MB engine just measured in its own APK. Q2 4/5: spotted the DEBUG banner unprompted ✓; didn't report the `kReleaseMode: false/true` text | — |
| 2026-10-25 | 1 | D0.3 — build modes (warm-up, section C) | 7/10 | Warm-up 5/5: reload vs restart now right, including that restart is not a native rerun. Section C 2/5: answered "don't ship bugs" but missed the point — a release build shows a **gray screen with no message**, so the bug is silent for the user *and* for me | Crash reporting (P8) is the answer to silent release failures |
| 2026-10-25 | 1 | D0.2 — fresh-start bug follow-up | 5/10 | Q1 3/5: "runtime issue" is the right category but no mechanism (the analyzer never builds the widget tree). Q2 2/5: "MainApp returns the widget tree" is partly right but `MaterialApp` isn't named; then **swapped hot reload and hot restart**, contradicting my own lab | Reload/restart is the D0.3 warm-up |
| 2026-10-25 | 1 | D0.2 — hot reload (warm-up, section C, step b) | 11/15 | Warm-up 3/5: put cross-platform down to the engine alone, **missed the per-platform embedder for the second time**, and called the Chrome build native (web compiles Dart to JS/Wasm). Section C 4/5: right conclusion, "already initialized" vague — hot reload doesn't rerun `main()`. Step b 4/5: exact error, cause and working fix; didn't consider `const name` | Embedder substitution re-taught as a side-by-side table; D2 follow-up on `const` |
| 2026-10-25 | 1 | D0.1 — Dart vs Flutter, four layers | 12/15 (4/5) | Flutter called "a package" — undersells the C++ engine and embedders; Q2 named the right layer but not *why* Chrome works (each platform has its own embedder); Q3 said "Dart VM" without mapping it to the engine layer. **All three questions answered — first completeness pass** | Re-ask the embedder-substitution idea in D0.2 |

---

# Mistakes Log

Record the **pattern**, not the individual bug.

| Date | Topic | Mistake | Root Cause | Correct Mental Model | Revisit |
|---|---|---|---|---|---|
| 2026-09-16 | Loops | Treated `for` as numeric and `while` as conditional | Learned from examples, not from the control-flow mechanism | `for` also has a condition; setup and step are extra syntax | ✅ **Corrected 2026-10-27** — D3 close-out Q1: "both are condition-based", no numbers mentioned. **All five September misconceptions are now corrected.** Recheck about 3 sessions later |
| 2026-09-16 | Immutability | Believed `final` allows reassignment | Confused rebinding with mutation of the referenced object | `final` prevents rebinding; the referenced object may still change | ✅ Corrected 2026-10-27 (D2 Step 1, own words: "we can mutate the thing if it's mutable but can't assign a new value"). Recheck about 3 sessions later |
| 2026-09-16 | Variables | Treated a variable as a container in every case | Overgeneralized a simple analogy | A variable is a binding; several bindings can reference one object | ✅ Corrected 2026-10-27 — name-tag model applied correctly in D2 Steps 1 and 7. Recheck about 3 sessions later |
| 2026-09-16 | Answering | Answered only the first portion of a multi-part question | Did not re-check every requested deliverable | Re-read the prompt and verify every part is answered | Ongoing |
| 2026-10-25 | Answering (**RECURRENCE**) | Twice in one reply: Q1 answered only the `flutter test` clause; Q2 skipped the null-dereference clause. Assignment 0 delivered 2 of 7 criteria | Treats the last or most familiar clause as the whole question; no checklist pass before submitting | Count the prompt's deliverables, answer each explicitly, then re-read and tick them off | **DRILL ACTIVE** — completeness is graded before correctness |
| 2026-10-25 | Answering (**RECURRENCE ×3**) | D0.2 exercise: 6 deliverables, 1 complete, 1 partial. SDK versions skipped for the **second exercise running**. Reported "done" with 4 deliverables missing | Treats "the code is committed" as "the exercise is done"; written answers (predictions, error message, section C) were never sent | Before saying "done", go down the acceptance-criteria list and point at the evidence for each box. Answers that live in my head or in the IDE don't count until they are pasted | **DRILL ACTIVE** — recurred in D3 Step 3: "done" ×2 with no output, and the code showed the fix hadn't been made |
| 2026-10-25 | Git: commit messages | 3 of 4 learner commits don't describe their change (update D0.3: `79b9a45` "Fix fresh-start bug by restoring runApp…" contains **only the tracker file** — the runApp fix was already in `d7fe14f`; 4 of 6 now mislabelled). `2a6c9c5` "Add initial iOS project structure" (it was the whole project plus the tracker); `9583fbd` "Refactor… comments and formatting" **hid a behaviour change** (`runApp(const MainApp())` → `runApp(const Text('Hello Jay'))`); `382d782` "change greeting to KK" changes nothing visible, because `name` is no longer on screen | Messages describe the intent or the most visible edit, not the diff; likely accepted from an IDE suggestion | Write the message from `git diff --staged`: what changed in behaviour first, then cosmetics. A behaviour change is never a "refactor" | D0.3 — every commit checked |
| 2026-10-25 | Cross-platform model | Explains "same code on Android and Chrome" with the engine alone; says Chrome gets native code | Two-layer mental model (my code → engine) instead of four; doesn't yet know web compiles Dart to JS/Wasm | Your code, the framework and the engine's drawing logic are shared. **Only the embedder is swapped per platform**, and on web Dart compiles to JS/Wasm, not machine code | ✅ Corrected at the D0 close-out (Q1 4/5). Recheck about 1 week later |
| 2026-10-25 | Hot reload vs restart | Said hot restart "picks up the value which is already initialized, not affecting main" — that's hot **reload**. My own lab an hour earlier showed the opposite | The two names are similar, and the rule hasn't been tied to the mechanism (which one reruns `main()`) | Hot **reload**: injects code, calls `build()` again, keeps state, does **not** rerun `main()`, globals keep their old values. Hot **restart**: reruns `main()` from the top, every global initialized again, state lost | ✅ Corrected in D0.3 (5/5); ✅ recheck passed in the D2 close-out Q4. Retire after one more |
| 2026-10-26 | Measurement | Wrote "JIT took time, AOT is faster" directly under a measurement showing AOT slower (0.572 s vs 0.243 s); ran each only once although the hint said to repeat | Explained from expectation instead of reading the numbers I'd just produced | One run isn't evidence. Repeat, read the numbers, and if they contradict the theory, say so and investigate. The CPU column (0.07 s vs 0.02 s) supported the theory; the wall clock had a one-off first-launch cost | P2 performance; every timing task |
| 2026-10-26 | AOT meaning | Explained the slow first exe launch as "first time it converts to machine code" | Carried JIT's "compile while running" idea over to AOT | **A**head-**o**f-**t**ime: `dart compile exe` already did all the compiling. The exe is machine code from its very first launch; a slow first launch is something outside the program | ❌ Persisted at the D1.2 warm-up → ✅ **corrected by experiment** (D1.2 Step A): exe built 22:34, source edited 22:36, exe still printed `Hello world` while `dart run` printed `CHANGED`. My conclusion: "at the time of making the exe it converts the code into machine code… unless it's recompiled". Recheck about 3 sessions later |
| 2026-10-26 | Exercise scope | Skipped Step 3 — the logic bug, the main point of D1.2 — and reported it with Step 2's answer; template ignored for the second exercise running | Long multi-step exercises get answered from memory, quickly, and without being run. Answers cluster on what was already done | Smaller units: one step, one answer, then the next | ✅ Working: one step per message since D1.2; D2 Step 7 was the first fully complete reply. Keep the format |
| 2026-10-27 | Assignment direction | Reversed which side is which, twice: "can't give an int to a string" (D1.2 C, really String → int) and "int can't hold the double" (D2 Step 4, really int → double) | Reads `TYPE name = value` the wrong way round | Read `double e = i;` as "put **i (an int)** into **e (a double box)**" — the box type is on the left, the value on the right | Next assignment question |
| 2026-10-27 | Label vs mechanism | "Why didn't the analyzer catch it?" → "because it's a runtime issue" — the third time (D0 Directionality, D1.2 list[10], D2 const `.add`) | Answers with the category name, which is the question restated | Name **what the tool knows and what it can't know**: the analyzer knows *types* (`List<int>` has `.add`), not facts about the specific object at runtime (its length, whether it's frozen) | ✅ Applied immediately in D2 Step 3 (four mechanism-style reasons). Keep checking |
| 2026-10-27 | Function design | Fixed an edge case by changing `double averageRating` → `void` and printing inside `lib/` (✅ reverted in Step 5b) | Optimized for making the error disappear rather than for what callers need | A function that *calculates* should **return** the value; the caller decides whether to print it, show it in Flutter, or sort by it. Fix edge cases inside the contract (e.g. return 0.0, later `double?`), don't change the contract | D3 Step 5b; D4 functions |
| 2026-10-26 | Expected values | Gave "expected by hand = 3" for `averageRating([4,3,5,4])` — the same as the buggy output; the correct value is 16 / 4 = 4.0 | Likely computed the "expected" by following the code (skipping the first item) instead of from the definition of an average — which copies the bug into the check | An expected value must come from **outside the code**: the definition (sum of all ÷ count), a hand calculation, or a known source. If expected = actual is derived from the code, a test can never fail | OPEN — D1.2 D2 verification skipped at my request; D2 close-out Q3 asked for the value of `7 / 2` and it was skipped again. Recheck in D3 (a loop with a known answer) and D16. **D3 Step 1:** value given (142 ✓) for the first time; method still came from the code's own check, not an independent count. **D3 Step 3:** 210 used ✓ (given by Claude after the hint confusion). **D3 Step 4:** asked for a new list worked out by hand — reused the known list instead. **D3 close-out: the cost made concrete** — no expected value written, so `validAverage` printed 1.714 instead of 4.0 and was committed without anyone noticing |
| 2026-10-25 | Compiler vs runtime | Described compile-time vs runtime *errors* when asked to define a *compiler* vs a *runtime*; gave syntax-only examples | Reasons from error symptoms rather than the machinery producing them. `int x = "hello"` is valid syntax, so a syntax-only model cannot explain why it is caught early | Compiler = translates source once, before execution. Runtime = machinery alive during execution. Syntax and type errors are both compile-time, from different stages: parser, then type checker | ✅ **Defined correctly in D1.1** (translator / backstage crew, 4/5). Parser-vs-type-checker part → D1.2. Recheck about 3 sessions later |

---

# Technical Debt

| Priority | Area | Debt | Why It Matters | Planned | Status |
|---|---|---|---|---|---|
| P0 | Versions | Verify real SDK and package versions before any version-sensitive lesson | Prevents invalid snippets and API mismatches | Ongoing | ✅ VERIFIED 2026-10-25 — Flutter 3.38.3 / Dart 3.10.1; `learning/pubspec.lock` resolved |
| P1 | Toolchain | Android licences not accepted | Blocked all Android builds | D0 | ✅ RESOLVED 2026-10-25 — doctor `[✓]`, debug APK built |
| P2 | Source control | `learning/` is untracked; the baseline is not committed | Assignment 0 exists to create a *reproducible* baseline; an uncommitted one cannot be returned to | D1 | ⚠️ OPEN — `git add -n` dry run confirms 66 files, zero leaks from `build/`, `.dart_tool/`, `.idea/` |
| P2 | Toolchain | No `.fvmrc`; Flutter resolves via the FVM global default | `pubspec.yaml` pins the Dart constraint but nothing pins the Flutter SDK — `flutter upgrade` would silently move the project | D1 | ✅ RESOLVED 2026-10-26 — pinned 3.38.3 (`36e2d66`). **Caveat:** plain `flutter` in the terminal still uses the global default; only `fvm flutter …` and VS Code honour the pin |
| P2 | Project | `learning/` is still the untouched `flutter create` scaffold | No learner-written Dart exists yet | D1 | OPEN |
| P3 | Source control | 5.1 MB `dart_basics_exe` committed in `e1d8324`, removed in `5fdd262` — **still in history and pushed to `origin/main`**; `dart_basics/.gitignore` still doesn't ignore it | Removing a file in a later commit doesn't remove it from history (the same lesson as the backend `.env`); every clone carries the 5 MB. Not a secret, so it's bloat, not a leak | D1.2 | ⚠️ PARTIAL — ignore rule added 2026-10-26 (`dart_basics_exe`, verified with `git check-ignore`). The blob stays in history; rewriting it needs a force-push — optional, my call, not recommended for 5 MB of non-secret data |
| P3 | Source control | `.DS_Store` committed at the repo root; no root `.gitignore` | macOS junk in history; it shows up as noise in diffs — it rode along again in `36e2d66` | D1 | OPEN — add a root `.gitignore` and untrack it |
| P1 | Backend contract | No refresh-token endpoint | Flutter must log the user out on expiry until it exists | Backend Phase Q → then F14 | OPEN (upstream) |
| P2 | Backend contract | CORS allows only `http://localhost:4200` | Blocks a Flutter **Web** client; irrelevant for Android/iOS | F10 | OPEN (upstream) |
| P1 | Releases | No repeatable signed build or patch policy | Prevents risky production delivery | P7 | NOT STARTED |

---

# Version Log

Only facts that change implementation. Recheck when the SDK or package changes.

| Checked | Topic | Conclusion | Recheck when |
|---|---|---|---|
| 2026-10-25 | Installed SDK | Flutter 3.38.3 stable (framework `19074d12f7`, engine `13e658725d`), Dart 3.10.1, DevTools 2.51.1, macOS 15.7.9 arm64. Resolved via FVM global default `~/fvm/default` → `~/fvm/versions/3.38.3`. No project `.fvmrc`. A newer stable exists and was deliberately **not** installed | Any `flutter upgrade`, or when a `.fvmrc` pin is added |
| 2026-10-25 | Project deps | `learning/pubspec.yaml`: Dart `^3.10.1`, `cupertino_icons ^1.0.8`, `flutter_lints ^6.0.0`. 9 transitive packages held below latest by the SDK constraint — expected, not a defect | First third-party dependency |
| 2026-10-25 | Hot reload / build modes | Per docs.flutter.dev (fetched today): hot reload rebuilds the widget tree and does **not** rerun `main()` or `initState()`; globals and static fields are state and are not reinitialized; hot reload works only in debug mode; profile mode is disabled on emulators/simulators; release mode is not supported on mobile emulators/simulators | Flutter SDK upgrade |
| 2026-10-25 | Compilation & error screens | Architectural overview: during development apps "run in a VM that offers stateful hot reload"; for release they are "compiled directly to machine code" (x64/ARM), or JS/Wasm on web (`dart2js`/`dart2wasm`; `dartdevc` in development). Errors doc: a build-phase `ErrorWidget` shows "an error message in red" in debug and "a gray background" in release; `kReleaseMode` is a top-level constant. `learning/android/app/build.gradle.kts` signs release builds with the **debug key** (template TODO), so they're fine locally and unusable for a store | Flutter upgrade, or when a real signing config is added (P7) |
| 2026-10-25 | FVM | FVM 4.1.2. `fvm use <version>` creates `.fvmrc` (the project's Flutter version) and a `.fvm/` symlink folder; docs recommend gitignoring `.fvm/` (done automatically when `updateGitIgnore` is true, the default) | FVM major upgrade |
| 2026-10-26 | Dart compilation | dart.dev overview: the Dart VM has "a just-in-time compiler (JIT) with incremental recompilation (enabling hot reload)"; the AOT compiler produces "native ARM or x64 machine code" with "consistent, short startup time"; the runtime handles GC, "enforcing the Dart type system" (some checks are runtime), and isolates. Local Dart 3.10.1: `dart create -t console` is the default template; `dart compile` offers `exe`, `aot-snapshot`, `jit-snapshot`, `kernel`, `js`, `wasm` | Dart SDK upgrade |
| 2026-10-26 | Dart error output (3.10.1) | Generated in the scratchpad: a syntax error reads `Expected ';' after this.` from `dart run` and `expected_token` from `dart analyze`; an out-of-range index reads `RangeError (length): Invalid value: Not in inclusive range 0..2: 3`, with a stack trace numbered `#0` (newest, `List.[]` in `dart:core`) down to `main`, then `dart:isolate` startup frames | Dart SDK upgrade |
| 2026-10-26 | final / const (Dart 3.10.1) | Scratchpad run: `final names = ['Jay']; names.add('KK')` works. `const ratings = [4,5]; ratings.add(3)` → analyzer silent, runtime `Unsupported operation: Cannot add to an unmodifiable list`. `name = 'KK'` on a `final` → `assignment_to_final_local`. `const now = DateTime.now()` → `const_initialized_with_non_constant_value` + `const_with_non_const` | Dart SDK upgrade |
| 2026-10-27 | var / dynamic / Object (Dart 3.10.1) | `var a = 5; a = 'hi'` → `invalid_assignment` (inferred `int`). `var b;` (no initializer) → `dynamic`: `b = 5; b = 'hi'` passes analyze and runs. `dynamic c = 5; c.length` → analyzer silent, runtime `NoSuchMethodError: Class 'int' has no instance getter 'length'`. `Object d = 5; d.length` → compile error `undefined_getter` | Dart SDK upgrade |
| 2026-10-27 | Numbers (Dart 3.10.1) | `5 / 2` → `2.5`; `4 / 2` → `2.0` (`/` always gives a `double`); `5 ~/ 2` → `2`. `double d = 5;` is allowed (an int *literal* becomes 5.0); `int i = 5; double d = i;` → `invalid_assignment`; `int x = 4 / 2;` → `invalid_assignment`. `num` accepts both | Dart SDK upgrade |
| 2026-10-27 | `~/` and conversion | `-5 ~/ 2` → `-2` (truncates toward zero); `(-5 / 2).floor()` → `-3`; `i.toDouble()` converts an int variable → `5.0` | Dart SDK upgrade |
| 2026-10-27 | String interpolation (Dart 3.10.1) | `'Hi $name.length'` → `Hi Jay.length` (`$` grabs only the identifier); `'Hi ${name.length}'` → `Hi 3`; `r'Hi $name'` → `Hi $name`; `'''…'''` keeps line breaks; `'$2 + 3'` → compile error `missing_identifier` | Dart SDK upgrade |
| 2026-10-27 | Scope / shadowing (Dart 3.10.1) | `var name` inside an `if` block shadows the outer `name`; after the block the outer value is unchanged (`Jay`). Without `var`, the assignment changes the outer variable (`KK` after the block). Using a block-local variable after its block → `undefined_identifier`. The analyzer gives no warning for the shadowing | Dart SDK upgrade |
| 2026-10-27 | `for` clauses (Dart 3.10.1) | All three `for` clauses are optional: `for (var i = 1; i <= 3;) {…}` and `for (;;) {…}` pass `dart analyze` and run (a missing step loops forever unless something `break`s) | Dart SDK upgrade |
| 2026-10-27 | for-in / empty average (Dart 3.10.1) | `for (var x in someMap)` → compile error `for_in_of_invalid_type` (a Map isn't an `Iterable`); `map.entries` / `.keys` / `.values` are. `averageRating([])` → `0 / 0` → **`NaN`**, no error, and the program carries on | Dart SDK upgrade |
| 2026-10-27 | switch / do-while (Dart 3.10.1) | A switch *statement* case with a body doesn't fall through and needs no `break` (`case 3: print('three'); case 4: …` prints only `three`); empty cases still group (`case 1: case 2: return 'Poor';`). `do { … } while (n < 5)` with `n = 10` runs the body once. `break` leaves the loop; `continue` skips to the next round | Dart SDK upgrade |
| 2026-10-23 | Riverpod codegen | `@riverpod` code generation is optional; docs warn it adds build steps. Let the installed version and existing setup decide | Riverpod upgrade |
| 2026-10-23 | Dart web interop | `dart:html` and legacy JS interop are deprecated; prefer `package:web` and `dart:js_interop` | Dart SDK upgrade or web work |
| 2026-10-23 | Play Console | Personal accounts created after 2023-11-13 need ≥12 testers opted in for a continuous 14-day closed test before production access | Before any release lab |
| 2026-10-23 | Store costs | Google Play: US$25 one-time. Apple Developer Program: US$99/year for distribution/TestFlight | Before enrolling |
| 2026-10-23 | Shorebird | Plan/usage limits apply; single-developer Hobby tier; billing by successful patch installs. Verify live pricing | Before creating an account or patching |

---

# Architecture Evolution

## Version 0 — now

```text
learning/lib/main.dart     (untouched flutter create scaffold)
```

## Version 1 — target for Track 2

```text
Widget → Provider/Notifier → Repository → ApiClient → Express API → MySQL
```

## Version 2 — target for Track 3

```text
Widget
  ↓
Provider / Notifier
  ↓
Repository ──┬──→ Local DB (Drift)   ← source of truth when offline
             └──→ ApiClient ──┬──→ Express API ──→ MySQL
                              └──→ Socket.IO  ──→ live updates
```

---

# Session Log

## Session template

```md
## YYYY-MM-DD — <topic>

### Learned
### Implemented
### Quiz
Score: /5
### Mastery
- [ ] Explain  [ ] Implement  [ ] Debug  [ ] Apply  [ ] Defend
### Mistakes
### Technical debt found
### Revision required
### Next session
```

---

## 2026-10-23 — Curriculum re-review (no teaching)

Reordered the roadmap for prerequisites, merged the overlapping early Dart phases, added test-out diagnostics, testing foundations, time estimates and cost-aware release prerequisites. No learner contact; nothing taught or assessed.

---

## 2026-10-25 — Phase 0 / Environment readiness

### Learned
- The four-layer model: Dart code → framework → engine → embedder, and the path from source to a rasterized frame.

### Implemented
- `flutter create` scaffold at `learning/` (android + ios). Android licences accepted. Real Android debug APK built and run.

### Verified by Claude (read-only)
- Flutter 3.38.3 / Dart 3.10.1 on macOS 15.7.9 arm64; Xcode 26.3; Android SDK 36.0.0.
- `dart format --output=none --set-exit-if-changed .` → 0 changed. `flutter analyze` → No issues found.
- `flutter doctor` Android toolchain `[✓]`. `git status` → `?? learning/`, repo at one commit.

### Quiz
Score: 2/5. Q1 — 1 of 3 clauses; the `flutter test` / embedder reasoning was correct and unprompted. Q2 — `int x = "hello"` correctly classified compile-time, but the answer described error categories rather than defining compiler and runtime, and skipped the null-dereference clause.

### Assignment 0 result
2 of 7 criteria passed, 1 partial, 4 outstanding. `lib/main.dart` is byte-for-byte the default scaffold, so the two passing criteria evidence the toolchain rather than the learner.

### Mastery
- [~] Explain 2/5  [ ] Implement  [ ] Debug  [ ] Apply  [ ] Defend

### Mistakes
- Recurrence of the multi-part answering pattern, twice in one reply. Drill activated.
- Compiler/runtime conflated with error categories — unchanged since the 2026-09-16 baseline.

### Technical debt found
- Baseline uncommitted · no `.fvmrc` pin · scaffold unmodified.

### Revision required
- Compiler vs runtime (re-ask in mechanism form) · loop mechanics · `final` vs `const` · binding vs mutation.

### Next session
- D1 — running Dart code, which also closes the compiler/runtime revision item.

---

## 2026-10-25 (cont.) — Tracker restructured to the backend format

### Changed
- Adopted `../backend/LEARNING_TRACKER.md`'s format: 5 mastery levels instead of 7, mastery per **topic** instead of per phase, granular tickable tasks, inline evidence, `Remaining before DONE` lines, escalating hints Level 0–5, and a flat scannable layout in place of ~400 lines of numbered prose.
- Replaced 22 phases with three tracks: **Dart Foundations (D0–D17)**, **Flutter Build (F1–F20)**, **Production (P1–P9)**.
- **Added a real Dart foundation track.** Dart was previously spread across four phases mixed with Flutter concerns; it is now 18 explicit beginner-paced units, and Flutter is gated behind the Track 1 checkpoint.
- **Project-first.** Replaced the ten-item project ladder with one continuous app: a Flutter client for my own Express/MySQL movie–watchlist API in `../backend/`. Every Flutter topic now maps to a real endpoint.
- Teaching mode set to **beginner-first**, with my backend/TypeScript experience used as an explanation bridge only — never as evidence of Dart mastery.
- Carried over all history: baseline quiz, six mistake-log rows, technical debt, version log, and both prior session entries.

### Next session
- D1 — running Dart code: compiler vs runtime, `dart create -t console`, first program, first deliberate bug.

---

## 2026-10-25 (cont.) — Clean slate, restart at D0

### Changed at my request
- **Quiz History cleared.** The 2026-09-16 baseline (31/50) and the 2026-10-25 D0 quiz (2/5) were deleted. No score carries forward.
- **D0 reset** from `REVIEW` to `IN PROGRESS`; every mastery box emptied and every learning task unticked.
- **Current Position** moved back to D0.

### Deliberately kept, and why
- **Environment facts** (licences accepted, APK built, format/analyze clean, SDK versions). These are verified machine state, not claims about my understanding. Re-running `flutter doctor --android-licenses` would prove nothing.
- **Mistakes Log.** I asked for the *quiz history* to go, not the mistakes. The two live entries — answering completeness, and compiler-vs-runtime — describe habits and mental models that a score reset does not undo. They stay until a fresh demonstration retires them. Say the word if you want these cleared too.
- **Technical Debt** and the **Version Log**: unresolved work and verified facts, not progress claims.

### Next session
- D0 unit 1 — what Dart and Flutter actually are, and what runs my code.

---

## 2026-10-25 (cont.) — D0.1 review

### Learned
- Dart vs Flutter; Flutter paints every pixel itself; the four layers; what `flutter run` does step by step.

### Implemented
- Replaced the 122-line counter scaffold with a 16-line app showing "JAY"; `test/` removed (the default test referenced the deleted `MyApp`). Committed as `2a6c9c5`.

### Quiz
Score: 12/15 — Q1 4/5 · Q2 4/5 · Q3 4/5. **All three answered: first completeness pass.**

### Review
- P2: `main.dart` is the `flutter create --empty` template (`templates/app/lib/main.dart.tmpl`) with `'Hello World!'` → `'JAY'`. Not wrong, but it doesn't prove I can write it — so `Implement` stays unticked until I can explain every line.
- P2: SDK versions + path not reported — 1 of 5 exercise criteria skipped (completeness, again on the exercise rather than the questions).
- P2: Edited `main.dart` at 17:29:45, committed at 17:30:20 — the scaffold was never captured in git, which was the reason for "commit first".
- P2: Commit message "Add initial iOS project structure and assets" describes none of the 67 files: it bundled the Flutter project, the slimmed `main.dart` and the tracker restructure.

### Mastery
- [~] Explain 4/5  [ ] Implement  [ ] Debug  [ ] Apply  [ ] Defend

### Next session
- D0.2 — line-by-line explanation of `main.dart`, SDK versions, debug/profile/release, hot reload vs restart.

---

## 2026-10-25 (cont.) — D0.2 hot reload: first submission

### Learned (taught)
- Hot reload vs hot restart vs full restart; hot reload does not rerun `main()` or `initState()`; globals are state. Bridge: `bun --watch` is a restart, not a reload. Verified against docs.flutter.dev.

### Implemented
- `db16d35`: comments added to `main.dart`; on-screen text changed from `'JAY'` back to `'Hello World'`. No top-level variable in the committed code, so the step b fix isn't visible.

### Deliverables (6)
1. Per-line ratings: **partial**. Comments instead of Know/Guess/No-idea ratings; 9 of 16 lines covered; mostly restate the name. One contradicts D0.1: "runApp is a built-in function" (it's an ordinary function from the widgets library). "build method is called when the widget is built" is circular.
2. SDK versions + path: **missing** (second time).
3. Hot-reload lab predictions and results: **missing**. Not in the terminal panel either (checked).
4. Step b error message, cause and fix: **missing**.
5. Section C answer: **missing**. Warm-up question also unanswered.
6. Commit: **half**. Committed, but "Refactor" is wrong (no behaviour-preserving restructure happened) and the message leaves out the visible text change.

### Quiz
No score: no questions answered.

### Mastery
- No change. Explain 4/5 from D0.1 stands. Implement and Debug stay unticked.

### Technical debt found
- `.DS_Store` tracked; no root `.gitignore`.

### Next session
- Resubmit D0.2, written in chat: the four lab predictions and results, the step b error, section C, the warm-up, SDK versions, and per-line ratings for the 7 lines not yet covered.

---

## 2026-10-25 (cont.) — D0.2 resubmission

### Deliverables
All six answered, an improvement on the first submission. Sub-gaps: SDK **path** still missing; lab gave results but no written predictions.

### Implemented (commits ed3286b, 9583fbd, 382d782)
- First own code: `final name = "Jay";` top-level, used via `'Hello $name!'`. Step b error hit and fixed by removing `const` from `MaterialApp`.
- **Regression:** `9583fbd` changed `runApp(const MainApp())` to `runApp(const Text('Hello Jay'))`, probably the section C experiment, and committed it under a "comments and formatting" message. `MainApp` and `name` are now dead code. A fresh start fails at **runtime**; `flutter analyze` reports no issues. Left for me to diagnose (debug-first), not revealed.
- More comments added since the last check: `super.key` (correct: passes the key to the parent class) and `build` "returns a widget tree" (correct, but still not *when* it's called). Not yet covered: `extends`, `@override`, `Widget`/`BuildContext`, `const`, `Center` — these move to D2/D7 and no longer block D0.

### Quiz
11/15 (warm-up 3 · section C 4 · step b 4).

### Mastery
Explain 4/5 · Implement 2/5 (first) · Debug 3/5 (first) · Apply — · Defend —

### Next
- Predict, then run `R` on the committed code; diagnose and fix the fresh-start failure; commit with an accurate message.
- Then D0.3: build modes.

---

## 2026-10-25 (cont.) — Fresh-start bug

### Result: 2 of 5 deliverables
- Prediction: **missing**. It can't be done honestly any more, since the error has been seen, so it's waived.
- Exact error: ✅ screenshot from a physical Android phone — *No Directionality widget found. RichText widgets require a Directionality widget ancestor…*
- Why the analyzer missed it: **missing**
- Fix: ✅ restored `runApp(const MainApp())`, which is the fix the error message itself points to (`MaterialApp` provides `Directionality`). Also changed `name` back to "Jay" and the text to just `Text(name)`.
- Commit: **missing**. Working tree modified, last commit is still the broken `382d782`.

### Note
- Reading the error and applying what it says is the right instinct. The message named `MaterialApp` as the usual source of `Directionality`.
- First run on a **physical Android phone** confirmed from the screenshot.

### Next
- Two one-line answers (why the analyzer can't see it; why `MainApp` fixes it), then commit, then D0.3.

---

## 2026-10-25 (cont.) — D0.2 close-out

### Result
- Commit `d7fe14f` "Revert name variable in main.dart to "Jay" and restore MainApp as the entry point" — **the first commit message that describes its behaviour change.** Small nit: `main()` is the entry point; `MainApp` is the root widget.
- Q1 3/5 · Q2 2/5 — see Quiz History.
- New mistake: hot reload and hot restart swapped in the explanation even though the lab had them right. Re-taught as a side-by-side table tied to my own steps c and d.

### Mastery (D0)
Explain 4/5 · Implement 2/5 · Debug 3/5 — no change; the explanation gaps above stop Explain going higher.

### Next
- D0.3 build modes, opening with the reload-vs-restart warm-up.

---

## 2026-10-25 (cont.) — D0.3 build modes: submission

### Deliverables (7)
1. Warm-up: ✅ 5/5 — reload/restart mix-up corrected.
2. Predictions before running: ⚠️ size given (debug larger); no `r` prediction.
3. APK sizes: ⚠️ debug 149 MB, release 40 MB reported; **no reason given**. Can't be checked on disk any more: a later `flutter run --release` replaced it with a 14.2 MB **arm64-only** APK (`libflutter.so` 10.6 MB engine + `libapp.so` 2.7 MB my code and framework). 40 MB ≈ 3 CPU ABIs × ~13.3 MB, so the reported figure fits a fat `flutter build apk`.
4. Release + `r`: ✅ the release key-command list shows only `h`, `c`, `q` — no reload or restart exists.
5. Mode on screen: ⚠️ code done (`Text("kReleaseMode: $kReleaseMode, name: $name")`) but what appeared in each mode wasn't reported. Redundant `import 'package:flutter/foundation.dart'` (`material.dart` already exports it); analyzer clean.
6. Section C: ⚠️ 2/5.
7. Commit: ❌ the `kReleaseMode` change is uncommitted. Also `79b9a45`'s message claims the runApp fix but holds only the tracker.

### Mastery (D0)
Explain 4/5 · Implement 2/5 · Debug 3/5 — unchanged; the warm-up gain is balanced by the section C gap.

### Next
- Finish D0.3: the reason for the size difference, what each mode showed on screen, commit. Then the D0 close-out.

---

## 2026-10-25 (cont.) — D0.3 closed

- `deb1753` "Update main.dart to display kReleaseMode and name in greeting message" — **accurate** (the tracker file rode along unmentioned, which is fine).
- Q1 4/5 · Q2 4/5. Noticed the DEBUG banner on my own.
- Next: D0 close-out (embedder substitution, `flutter run` walkthrough, SDK path, `.fvmrc`), then D1.

---

## 2026-10-25 (cont.) — D0 notes + close-out issued

- Created `notes/D0-toolchain-and-first-run.md` on my request: 10 topics, each with what / why it matters / what I saw, plus my own measurements, commands and a mistakes table. This is the first file Claude wrote outside the tracker, authorized explicitly; it's study notes, not app code. Not committed — mine to commit.
- Close-out questions are **new scenarios** (iOS, macOS, a different failure), so the notes can't be copied straight in; answer from memory first.
- Verified: FVM 4.1.2 installed; `fvm use <version>` creates `.fvmrc` and `.fvm/`; FVM recommends gitignoring `.fvm/` (fvm.app configuration docs).

---

## 2026-10-26 — D0 close-out → **D0 DONE**

### Result
- Q1 4/5 · Q2 4/5 · Q3 4/5 · Q4 4/5 → 16/20. 6 of 7 items answered; the SDK path was missed for the third time.
- **The embedder idea finally landed** (Q1: iOS signing fails at the embedder; macOS has its own native setup).
- Pinned Flutter 3.38.3 with FVM (`36e2d66`). `.fvm/` correctly gitignored. Notes committed (`ad9fea0`). **Both commit messages accurate** — the third and fourth accurate in a row.

### Found while verifying
- Inside `learning/`, `command -v flutter` → `~/fvm/default/bin/flutter`, the **global** default. The pin is honoured by `fvm flutter …` and VS Code (`.vscode/settings.json` → `.fvm/versions/3.38.3`) but **not** by plain `flutter`. Both are 3.38.3 today, so nothing differs yet — but it's the exact silent-drift risk the pin was meant to remove.

### Mastery (D0)
Explain 4/5 · Implement 2/5 · Debug 3/5 — all three evidenced, so D0 → `DONE`. Apply and Defend stay open (project work, Track 1 checkpoint).

### Next
- D1 — running Dart code. Warm-up: the `flutter` vs `fvm flutter` path item.

---

## 2026-10-26 (cont.) — D1.1 submission

### Implemented
- `dart_basics/` console project (`0df7aa5`, message accurate). `lib/dart_basics.dart`: `divideBySeven()` builds the multiples of 7 up to 1000 with a `for` + `%`; called from `bin/`. `dart analyze` clean.
- Review: P2 — the name `divideBySeven` doesn't say what it returns (it returns *multiples* of 7; it divides nothing). P3 — template leftovers: `calculate()`, its test, and `print('Hello world')`. P2 — `dart_basics_exe` is untracked but **not ignored**; one `git add .` would commit a 5.1 MB binary.

### Measured (mine, then Claude's reruns)
- Mine, single run: `dart run` 0.243 s · exe 0.572 s (first launch).
- Rerun ×3 by Claude: `dart run` 0.21 / 0.16 / 0.17 s · exe 0.01 / 0.01 / 0.01 s → AOT starts ~15–20× faster. Exe size 5.1 MB.

### Deliverables: 2 complete · 4 partial · 1 missing
- Complete: project + folders explained; own computing program.
- Partial: warm-up (no command); timing (no size, explanation contradicts data); A/B (no `'one'` answer, no exact errors, no analyze results); commit (exe not ignored).
- Missing: **compiler and runtime definitions** — the oldest open item, carried since 2026-09-16.

### Process change
- Fill-in template added to every exercise from now on.

### Mastery (D1)
- Implement [~] first evidence · Explain [~] partial · Debug [ ].

---

## 2026-10-26 (cont.) — D1.1 resubmission → concepts closed

- **Compiler and runtime defined in my own words, 4/5 each** — the item open since the 2026-09-16 baseline.
- A/B predictions confirmed; `invalid_assignment` caught by `dart analyze`; RangeError at runtime after `'one'` printed.
- New misconception: thought the exe compiles to machine code on first launch. Corrected; rechecked at the start of D1.2.
- Template used loosely: 5 blanks left (warm-up output, exe size, exact B error, gitignore, commit).
- Working tree: Program B (crashes) still in `bin/`; Program A commented out in `lib/`; exe still neither ignored nor committed; nothing committed since `0df7aa5`. Don't commit the crashing `bin/` — the same lesson as D0.2's broken commit.

---

## 2026-10-26 (cont.) — D1.2 submission (partial)

### Code (`e1d8324`, `5fdd262`, `0559a0b`; pushed to origin/main)
- ✅ `bestRating` fixed with `ratings.length - 1` — the **calling** function, not `pickRating` where it crashed. That is the cause-vs-crash-site idea, applied correctly.
- ❌ `averageRating` was never added — Step 3 not attempted.
- ⚠️ The exe was committed (`e1d8324`), then removed (`5fdd262`): still in history and on GitHub. Still not gitignored.
- P3: a second `main()` in `lib/dart_basics.dart` (library files don't need one); copied `// line 2/6/11` comments now point at the wrong lines (16/20/25); commented-out leftovers in `bin/` and `lib/`.
- `0559a0b` "Refactor main function and improve bestRating logic" — a bug fix labelled as a refactor (the commit-message pattern).

### Answers
- Template not used. Warm-up: AOT misconception persisted. Step 1: analyzer lines only. Step 2: fix only. Step 3: answered with Step 2's bug.

### Mastery (D1)
- Debug [~] — the Step 2 fix shows cause vs crash site in action. Explain [~]. Implement [~].

### Next
- Proposed: one step per message for the rest of D1.2, starting with the AOT experiment.

---

## 2026-10-26 (cont.) — D1.2 Step A (one-step format)

- AOT experiment run and verified from timestamps: the exe still printed `Hello world` after the source changed; `dart run` printed `CHANGED` (Claude reran it). Conclusion stated correctly in my own words. 4/5 — the prediction and the `dart run` line from the 4-line reply weren't given.
- Already working ahead, uncommitted: `averageRating` added **and already fixed** (`i = 0`) without the evidence steps — Step D will ask me to reproduce first. `.gitignore` gained `.exe`, which doesn't match `dart_basics_exe` — that's Step B.

## 2026-10-26 (cont.) — D1.2 Step B

- Reason correct: `.exe` matches only a file literally named `.exe`, and `dart_basics_exe` has no extension. New rule `dart_basics_exe`; `git check-ignore -v` → `.gitignore:4`; `git status` clean. All 3 answers given.
- Committed and pushed `d9b808c` "Fix averageRating logic and update main function output". It's really an *add* — the buggy version was never committed — and the ignore-rule change isn't mentioned. P3: `.gitignore` has no trailing newline.

## 2026-10-26 (cont.) — D1.2 Step D1 → **D1 DONE**

- Step C 4/5: parser = grammar, type checker = types.
- Step D1 3/5: bug reproduced, loop trace printed, cause (start at 1, indexes start at 0) and fix (→ 4.0) correct. **Expected value given as 3** — the buggy output; the correct value is 16 / 4 = 4.0. Logged in Mistakes.
- Step D2 (independent second input, remove the debug print, commit) **skipped at my request**. Left behind, uncommitted: the `print('i=$i …')` line in `lib/dart_basics.dart`.
- D1 → `DONE` on Explain/Implement/Debug evidence. Next: D2 Step 1, one step per message.

---

## 2026-10-27 — D2 values, variables and types → **D2 DONE**

### Learned
- `final` (no rebinding, object may still mutate) vs `const` (compile-time, frozen) — and that TS `const` ≈ Dart `final`. Inference (`var x = 5` is `int` for good; `var x;` is `dynamic`). `dynamic` (checks off → runtime errors) vs `Object` (checked against the declared type). `int`/`double`/`num`, `/` always `double`, `~/` truncates toward zero; int literal → double allowed, int variable → double not. Strings: `$name` vs `${expr}`, raw, `'''` keeps indentation. Scope and shadowing (the analyzer doesn't warn).

### Format
- One step per message throughout. Step 7 was the first fully complete reply, with real output for every blank.

### Quiz
- Steps 1–7 + close-out 17/20. Mechanism-style "why" answers from Step 3 onward (the label→mechanism drill worked).

### Mistakes
- Corrected: `final` allows reassignment · variable-as-container · label instead of mechanism (improving).
- New: assignment direction read backwards (twice).
- Still open: expected values from the definition — the `7 / 2` value was skipped.

### Housekeeping
- Uncommitted in `dart_basics/`: the D2 experiments in `bin/`, the debug print in `lib/averageRating`. `dart analyze` shows 2 `unused_local_variable` warnings.

### Next
- D3 — control flow.

## 2026-10-27 (cont.) — housekeeping before D3

- `92bd611` "Refactor dart_basics: comment out unused code and enhance averageRating function with debug prints" — **committed the debug print** instead of removing it (`lib/dart_basics.dart:26`), labelled the change "refactor" again, and left 7 commented-out lines in `bin/`. `dart analyze` now clean. `.DS_Store` modified again (no root `.gitignore` yet).

---

# Definition of Done

A topic is not `DONE` unless:

- [ ] I can explain it in simple language without notes
- [ ] I implemented it myself from a blank file
- [ ] I debugged at least one realistic failure and named the root cause
- [ ] I used it in the real project (→ `Apply`)
- [ ] I wrote tests where the topic calls for them
- [ ] I understand the security and performance implications
- [ ] I can say when **not** to use it
- [ ] I passed the track checkpoint (→ `Defend`)

A track is not `DONE` until every topic gate plus the checkpoint (concepts ≥80%, working implementation, root-cause debugging, defended architecture) is met.

---

# Golden Rules

1. Do not skip prerequisites.
2. One focused topic at a time.
3. I implement. Claude does not solve assignments upfront.
4. Debug with evidence before fixing.
5. Measure performance instead of guessing.
6. Verify SDK and package versions before version-sensitive lessons.
7. Keep secrets and user data safe.
8. Claude edits this tracker only — never my learning code.
9. A passing build is not proof of mastery.
10. Never mark progress I have not demonstrated.
11. Grade completeness before correctness.

> **Do not measure progress by how much Claude writes. Measure it by how much I can build after Claude stops helping.**
