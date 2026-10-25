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
**Topic:** 🔄 **D0 — toolchain & first run** · D0.1 done (12/15) · 🔄 **D0.2 submitted 2026-10-25 — 1 of 6 deliverables complete, 1 partial; resubmission due** (lab record, step b error, section C answer, warm-up, SDK versions, per-line ratings) → then **D0.3** build modes
**Clean slate:** quiz history cleared and all mastery reset on 2026-10-25 at my request. Nothing is assumed learned.
**Revise (spaced):** nothing yet — the queue rebuilds from the fresh start
**Open drill:** answering completeness — count the prompt's deliverables before replying (see Mistakes Log; kept deliberately, since it is a live habit, not a score)
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
**Status:** `IN PROGRESS` ← **restarted fresh 2026-10-25 at my request; all assessment reset**

**Environment facts** — machine state verified by Claude with read-only commands. Not assessment, and not re-done, because re-accepting licences or rebuilding an APK proves nothing about understanding:

- [x] Flutter, Dart, Android Studio, Xcode installed (FVM-managed)
- [x] Android licences accepted; `flutter doctor` Android `[✓]`
- [x] Project exists at `learning/` (`flutter create` scaffold, untouched)
- [x] Android debug APK built — `learning/build/app/outputs/flutter-apk/app-debug.apk`
- [x] `dart format` → 0 changed · `flutter analyze` → no issues

**Learning tasks** — all reset to zero:

- [x] Explain what Dart is, and what Flutter is, in my own words (D0.1 Q1 — 4/5; "package" undersells the engine)
- [~] Explain the four layers: my code → framework → engine → embedder (used correctly in Q2/Q3; not yet stated whole)
- [ ] Explain what actually happens when I run `flutter run`
- [~] Explain which layer fails when an Android build fails but Chrome succeeds (embedder ✓; "Chrome has its own embedder" missing)
- [x] Explain why `flutter test` needs no emulator (D0.1 Q3 — skips the embedder ✓)
- [~] Explain every line of my own `main.dart` (D0.2: comments added on 9 of 16 lines; most restate the name — "MainApp constructor", "main function" — rather than say what the line does; `const`, `super.key`, `@override`, `extends`, `BuildContext`, `Center` not covered)
- [ ] Explain debug vs profile vs release mode
- [ ] Explain hot reload vs hot restart vs a fresh launch (D0.2 issued)
- [ ] State my SDK versions and where they resolved from
- [x] Commit the baseline — `2a6c9c5`, 65 files under `learning/` (but committed *after* editing, and the message is inaccurate; see review)
- [ ] Decide on `.fvmrc` pinning, or record a deliberate no

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
[ ] Explain
[ ] Implement
[ ] Debug
[ ] Apply
[ ] Defend
```

---

## D1. Running Dart code — compiler, runtime, and the first program
**Status:** `IN PROGRESS` ← **next topic**

This unit also closes the oldest open revision item, carried since the 2026-09-16 baseline.

- [ ] Explain what a **compiler** is (a program that translates source *once, before* execution)
- [ ] Explain what a **runtime** is (machinery alive *during* execution — VM, GC, type checks, event loop)
- [ ] Explain JIT vs AOT, and why debug builds hot-reload but release builds cannot
- [ ] Explain the three error kinds: syntax, type, runtime, logic — and which stage catches each
- [ ] Explain why `int x = "hello";` is a *type* error, not a syntax error
- [ ] Explain when a null dereference is compile-time vs runtime under sound null safety
- [ ] Create a console project with `dart create -t console`
- [ ] Run it with `dart run`; print a **computed** value, not a literal
- [ ] Read a compile error and locate the line
- [ ] Read a runtime stack trace and locate the frame
- [ ] Introduce one deliberate logic bug; diagnose it with the debugging template
- [ ] Compare: `dart run` vs `dart compile exe` vs how Flutter runs the same language

Carried misconception to correct (from 2026-10-25): compile-time examples were all *syntax* errors. Syntax errors and type errors are both compile-time but come from different stages — parser, then type checker.

---

## D2. Values, variables and types
**Status:** `TODO`

- [ ] Values vs variable bindings vs assignment
- [ ] `var`, explicit types, type inference
- [ ] `final` — prevents **rebinding**, not mutation of the referenced object
- [ ] `const` — compile-time constant; how it differs from `final`
- [ ] A variable is a binding; two bindings can reference one mutable object
- [ ] `int`, `double`, `num`, `String`, `bool`
- [ ] `dynamic` vs `Object` vs `Object?` vs `void` vs `Never`
- [ ] Strings: interpolation, raw strings, multiline
- [ ] Scope and shadowing
- [ ] Static vs dynamic typing; what the analyzer checks before you run
- [ ] Exercise: predict which of four `final`/`const` lines compile, and why
- [ ] Exercise: mutate a list held by a `final` binding; explain why it is allowed

Closes three baseline misconceptions: `final` vs `const`, binding vs mutation, variable-as-container.

---

## D3. Control flow
**Status:** `TODO`

- [ ] `if` / `else`, boolean logic, guard clauses
- [ ] Basic `switch` statements (pattern-based switch comes in D12)
- [ ] `while`, `do-while`
- [ ] `for` — **it has a condition**; it is not inherently a "numeric" loop
- [ ] `for-in` over an iterable
- [ ] `break`, `continue`
- [ ] Off-by-one errors — build one deliberately, then fix it
- [ ] Infinite loops — cause one deliberately, then explain the cause
- [ ] Exercise: rewrite a `for` as a `while` and prove they are equivalent

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
| 2026-10-25 | 1 | D0.1 — Dart vs Flutter, four layers | 12/15 (4/5) | Flutter called "a package" — undersells the C++ engine and embedders; Q2 named the right layer but not *why* Chrome works (each platform has its own embedder); Q3 said "Dart VM" without mapping it to the engine layer. **All three questions answered — first completeness pass** | Re-ask the embedder-substitution idea in D0.2 |

---

# Mistakes Log

Record the **pattern**, not the individual bug.

| Date | Topic | Mistake | Root Cause | Correct Mental Model | Revisit |
|---|---|---|---|---|---|
| 2026-09-16 | Loops | Treated `for` as numeric and `while` as conditional | Learned from examples, not from the control-flow mechanism | `for` also has a condition; setup and step are extra syntax | D3 |
| 2026-09-16 | Immutability | Believed `final` allows reassignment | Confused rebinding with mutation of the referenced object | `final` prevents rebinding; the referenced object may still change | D2 |
| 2026-09-16 | Variables | Treated a variable as a container in every case | Overgeneralized a simple analogy | A variable is a binding; several bindings can reference one object | D2 |
| 2026-09-16 | Answering | Answered only the first portion of a multi-part question | Did not re-check every requested deliverable | Re-read the prompt and verify every part is answered | Ongoing |
| 2026-10-25 | Answering (**RECURRENCE**) | Twice in one reply: Q1 answered only the `flutter test` clause; Q2 skipped the null-dereference clause. Assignment 0 delivered 2 of 7 criteria | Treats the last or most familiar clause as the whole question; no checklist pass before submitting | Count the prompt's deliverables, answer each explicitly, then re-read and tick them off | **DRILL ACTIVE** — completeness is graded before correctness |
| 2026-10-25 | Answering (**RECURRENCE ×3**) | D0.2 exercise: 6 deliverables, 1 complete, 1 partial. SDK versions skipped for the **second exercise running**. Reported "done" with 4 deliverables missing | Treats "the code is committed" as "the exercise is done"; written answers (predictions, error message, section C) were never sent | Before saying "done", go down the acceptance-criteria list and point at the evidence for each box. Answers that live in my head or in the IDE don't count until they are pasted | **DRILL ACTIVE** |
| 2026-10-25 | Compiler vs runtime | Described compile-time vs runtime *errors* when asked to define a *compiler* vs a *runtime*; gave syntax-only examples | Reasons from error symptoms rather than the machinery producing them. `int x = "hello"` is valid syntax, so a syntax-only model cannot explain why it is caught early | Compiler = translates source once, before execution. Runtime = machinery alive during execution. Syntax and type errors are both compile-time, from different stages: parser, then type checker | **D1** |

---

# Technical Debt

| Priority | Area | Debt | Why It Matters | Planned | Status |
|---|---|---|---|---|---|
| P0 | Versions | Verify real SDK and package versions before any version-sensitive lesson | Prevents invalid snippets and API mismatches | Ongoing | ✅ VERIFIED 2026-10-25 — Flutter 3.38.3 / Dart 3.10.1; `learning/pubspec.lock` resolved |
| P1 | Toolchain | Android licences not accepted | Blocked all Android builds | D0 | ✅ RESOLVED 2026-10-25 — doctor `[✓]`, debug APK built |
| P2 | Source control | `learning/` is untracked; the baseline is not committed | Assignment 0 exists to create a *reproducible* baseline; an uncommitted one cannot be returned to | D1 | ⚠️ OPEN — `git add -n` dry run confirms 66 files, zero leaks from `build/`, `.dart_tool/`, `.idea/` |
| P2 | Toolchain | No `.fvmrc`; Flutter resolves via the FVM global default | `pubspec.yaml` pins the Dart constraint but nothing pins the Flutter SDK — `flutter upgrade` would silently move the project | D1 | ⚠️ OPEN — decision due |
| P2 | Project | `learning/` is still the untouched `flutter create` scaffold | No learner-written Dart exists yet | D1 | OPEN |
| P3 | Source control | `.DS_Store` committed at the repo root; no root `.gitignore` | macOS junk in history; it will show up as noise in every diff | D0.2 | OPEN — add a root `.gitignore` and untrack it |
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
