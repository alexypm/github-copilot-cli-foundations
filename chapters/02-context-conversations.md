# 02 - Context and Conversations

![Context window visualization](../../02-context-conversations/assets/context-window-visualization.png)

## What You Will Do

Show Copilot the right files and continue the same session instead of starting over.

## What This Chapter Covers

In this chapter, you will use @ file references, compare single-file and multi-file context, and continue one session with follow-up questions.

## Goal

By the end of this chapter, you should know how to give Copilot useful context and keep a conversation going.

## Follow Along

1. Reference one file with `@`.
2. Reference multiple files with `@`.
3. Reference a whole folder with `@`.
4. Ask a cross-file question.
5. Resume the same session with a follow-up question.

## How To Follow Along

- Use the exact file path shown in the prompt.
- Type one prompt, then wait for the answer.
- Keep the same session open for the follow-up question.
- Compare how the answer changes when you add more context.

## Try These Prompts

```text
What does @samples/book-app-project/book_app.py do?
```

```text
Find bugs that involve @samples/book-app-project/books.py and @samples/book-app-project/book_app.py
```

```text
Explain how @samples/book-app-project/ and @samples/book-app-project/tests/ work together.
```

```text
Continue from the last answer and suggest the next step.
```

## Your Practice Step

Reference a different file from the group and compare answers.

## What Success Looks Like

You should see that better context produces better answers.

## Quick Reminder

Keep prompts focused. Too much context can make the answer less useful.