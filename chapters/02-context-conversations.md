# 02 - Context and Conversations

![Chapter 02: Context and Conversations](../assets/ch02-header.png)

## What You Will Do

Show Copilot the right files and continue the same session instead of starting over.

In this chapter, you will use @ file references, compare single-file and multi-file context, and continue one session with follow-up questions.

## Goal

By the end of this chapter, you should know how to give Copilot useful context and keep a conversation going.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

## New to Context? Start Here!
![Context window visualization](../assets/context-window-visualization.png)

1. Start one named session: `copilot --name=context-demo`.
2. Ask one single-file question first.
3. Add one more file and compare answer quality.
4. End by using `--continue` or `--resume` to prove persistence.

## How This Chapter Works

Each task increases context scope in order:

1. Single-file to multi-file context.
2. Multi-file reasoning with follow-up.
3. Whole-folder understanding and action.
4. Session persistence for workshop demos.

### Start Here: Open One Session and Keep It

1. Start a named session: `copilot --name=context-demo`

### Task 1: Add Better Context Step by Step

1. Run this single-file prompt: `Explain what @workshop/samples/book-app-project/utils.py does.`
2. Run this multi-file prompt: `Compare @workshop/samples/book-app-project/book_app.py and @workshop/samples/book-app-project/books.py for consistency.`
3. Run this directory prompt: `Review all files in @workshop/samples/book-app-project/ for error handling issues.`

<details>
<summary>See demo output (optional)</summary>

![File context demo](../assets/context-file-demo.gif)

![Multi-file demo](../assets/context-multi-file-demo.gif)

</details>

### Task 2: Ask a Cross-File Question

![Cross-file intelligence](../assets/context-cross-file-intelligence.png)

1. Run this cross-file prompt: `How do @workshop/samples/book-app-project/book_app.py and @workshop/samples/book-app-project/books.py work together, and what issue should we fix first?`
2. In the same session, run: `Continue from the last answer and suggest the next step.`

<details>
<summary>See demo output (optional)</summary>

![Multi-turn demo](../assets/context-multi-turn-demo.gif)

</details>

### Task 3: Understand the Whole Codebase Fast

![Codebase understanding](../assets/context-codebase-understanding.png)

1. Run this prompt: `@workshop/samples/book-app-project/ In one paragraph, what does this app do and what are its biggest quality issues?`
2. Run this follow-up: `Give me the first fix to make, and explain why in two sentences.`

### Wrap Up: Leave and Continue Later

![Session persistence timeline](../assets/context-session-persistence.png)

1. Exit and continue: run `/exit`, then `copilot --continue`, then ask: `What was the first fix you recommended earlier?`
2. Exit and resume by name: run `/exit`, then `copilot --resume`, choose `context-demo`, then ask: `Summarize what we discussed in this session so far.`
3. Bring your top issue into Chapter 03, where you run a full development workflow from review to ship.

## How To Follow Along

- Follow the steps in order: add context, ask cross-file, summarize fast, then resume later.
- Use the exact file paths shown in the prompts.
- Keep one session open through cross-file follow-up.
- Compare answer quality across single-file, multi-file, and directory context.
- Verify both `--continue` and `--resume` during the persistence demo.
- If answers become vague, reduce context and ask one focused follow-up.

## Your Practice Step

Repeat the same workflow on a different folder and compare the results.

## What Success Looks Like

You should see that better context produces better answers, and that saved conversations can be resumed for demos.

## Quick Reminder

Keep prompts focused. Too much context can make the answer less useful.