# 02 - Context and Conversations

![Chapter 02: Context and Conversations](../assets/ch02-header.png)

## What You Will Do

Show Copilot the right files and continue the same session instead of starting over.

In this chapter, you will use @ file references, compare single-file and multi-file context, and continue one session with follow-up questions.

## Goal

By the end of this chapter, you should know how to give Copilot useful context and keep a conversation going.
## CLI Commands for This Chapter

| Command | Where to run it | Purpose |
|---|---|---|
| `copilot --name=context-demo` | Terminal | Start a named session |
| `@<file-or-directory>` | Copilot prompt | Add file or directory context |
| `/exit` | Copilot session | End the current session |
| `copilot --continue` | Terminal | Resume the most recent session |
| `copilot --resume=context-demo` | Terminal | Resume the named session |
| `/memory on` | Copilot session | Enable saved memory |
| `/memory show` | Copilot session | Show available memories |
| `/memory off` | Copilot session | Disable saved memory |

## Bookstore Use Case: Trace Invalid Book Data

Chapter 01 found a likely validation risk. Now you will gather enough context to confirm where user input enters the bookstore app, where books are saved, and where tests belong.

Keep all prompts focused on `samples/book-app-project/`.

<img src="../assets/context-window-visualization.png" alt="Context window visualization" width="650">

## Live Follow-Along

### Step 1: Open One Session and Keep It

1. Start a named session: `copilot --name=context-demo`

### Step 2: Add Better Context Step by Step

1. Run this single-file prompt: `Explain what @samples/book-app-project/utils.py does.`
2. Run this multi-file prompt: `Compare @samples/book-app-project/book_app.py and @samples/book-app-project/books.py for consistency.`
3. Run this directory prompt: `Review all files in @samples/book-app-project/ for error handling issues.`

> **Checkpoint:** Notice what changes when Copilot sees one file, two files, and the whole sample folder.

<details>
<summary>See demo output (optional)</summary>

<img src="../assets/context-file-demo.gif" alt="File context demo" width="650">

<img src="../assets/context-multi-file-demo.gif" alt="Multi-file demo" width="650">

</details>

### Step 3: Ask a Cross-File Question

<img src="../assets/context-cross-file-intelligence.png" alt="Cross-file intelligence" width="650">

1. Run this cross-file prompt: `How do @samples/book-app-project/book_app.py and @samples/book-app-project/books.py work together, and what issue should we fix first?`
2. In the same session, run: `Continue from the last answer and suggest the next step.`

> **Checkpoint:** The answer should connect CLI input in `book_app.py` to storage behavior in `books.py`.

<details>
<summary>See demo output (optional)</summary>

<img src="../assets/context-multi-turn-demo.gif" alt="Multi-turn demo" width="650">

</details>

### Step 4: Confirm the Validation Path

<img src="../assets/context-codebase-understanding.png" alt="Codebase understanding" width="650">

1. Run this prompt: `@samples/book-app-project/ In one paragraph, what does this app do and what are its biggest quality issues?`
2. Run this follow-up: `Give me the first fix to make, and explain why in two sentences.`

3. Run: `Trace an empty book title from user input to saved data, and identify the files and tests that should change.`

> **Checkpoint:** Save the recommended first fix. Chapter 03 will implement and test it.

### Wrap Up: Leave and Continue Later

<img src="../assets/context-session-persistence.png" alt="Session persistence timeline" width="650">

1. Exit with `/exit`, then run `copilot --continue`. This resumes the most recent session. Ask: `What was the first fix you recommended earlier?`
2. Exit with `/exit`, then run `copilot --resume=context-demo`. This resumes the named session directly. Ask: `Summarize what we discussed in this session so far.`
3. Bring your top issue into Chapter 03, where you run a full development workflow from review to ship.

### Optional Demo: Check Persistent Memory

A session stores one conversation so you can resume it later. Persistent memory stores reusable facts and preferences that Copilot can apply across sessions. Memory can be associated with your user account or the current repository.

1. Start Copilot CLI: `copilot`.
2. Run `/memory on` to make sure memory is enabled.
3. Run this prompt: `Remember that I prefer pytest for Python tests in this workshop.`
4. Run `/memory show`.
5. In the output, find the saved pytest preference and check whether it is associated with your user account or this repository. The exact formatting may vary by Copilot CLI version.
6. Run `/memory off` if you prefer each session to start without saved memories.

> **If no details appear:** Confirm that `/memory on` succeeded, repeat the `Remember that...` prompt, and run `/memory show` again. Memory may not be available for every account.
>
> **Note:** Use `/memory show` instead of looking for a local file. How memory is stored can vary by Copilot CLI version and account, while this command shows the memories available to your current session.

### What We Achieved Together

We expanded from one file to multiple files and the full sample folder, traced an empty title from CLI input to saved data, and identified the source and test files involved. We also resumed the conversation without losing its context.

Continue to Chapter 03, where we implement and test the validation change.