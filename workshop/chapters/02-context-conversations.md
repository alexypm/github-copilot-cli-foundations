# 02 - Context and Conversations

![Context window visualization](../assets/context-window-visualization.png)

## What You Will Do

Show Copilot the right files and continue the same session instead of starting over.

In this chapter, you will use @ file references, compare single-file and multi-file context, and continue one session with follow-up questions.

## Goal

By the end of this chapter, you should know how to give Copilot useful context and keep a conversation going.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

1. Run this prompt: `What does @workshop/samples/book-app-project/book_app.py do?`
2. Run this prompt: `Find bugs that involve @workshop/samples/book-app-project/books.py and @workshop/samples/book-app-project/book_app.py`
3. Run this prompt: `Explain how @workshop/samples/book-app-project/ and @workshop/samples/book-app-project/tests/ work together.`
4. Run this prompt: `What cross-file issue should we fix first in this project?`
5. In the same session, run this follow-up prompt: `Continue from the last answer and suggest the next step.`

## How To Follow Along

- Use the exact file path shown in the prompt.
- Type one prompt, then wait for the answer.
- Keep the same session open for the follow-up question.
- Compare how the answer changes when you add more context.

## Your Practice Step

Reference a different file from the group and compare answers.

## What Success Looks Like

You should see that better context produces better answers.

## Quick Reminder

Keep prompts focused. Too much context can make the answer less useful.