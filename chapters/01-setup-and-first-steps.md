# 01 - First Steps

![Chapter 01: First Steps](../assets/ch01-header.png)

## What You Will Do

Try the three ways to use Copilot CLI and notice how each one feels.

In this chapter, you will try review, explain, and generate prompts, then compare the three Copilot CLI modes.

## Goal

By the end of this chapter, you should know when to use interactive, plan, and programmatic modes.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

## New to Copilot CLI Modes? Start Here!

1. Start one named session: `copilot --name=first-steps-demo`.
2. Run one prompt in interactive mode first.
3. Use `/plan` on the same task before changing code.
4. Run one `copilot -p` one-shot command and compare output style.

## How This Chapter Works

Use the same task across all modes so comparison is easy:

1. Investigate in interactive mode.
2. Plan safely before coding.
3. Run one-shot automation.
4. Resume and summarize.

### Start Here: You Just Inherited This Book App

1. Start interactive mode: `copilot --name=first-steps-demo`
2. Imagine you are the new developer. Your task is to quickly understand quality issues and add one safe improvement.

### Task 1: Investigate with Interactive Mode

![Interactive mode workflow](../assets/firststeps-interactive-mode.png)

1. Run this prompt: `Review this file for bugs and quality issues: @workshop/samples/book-app-project/books.py`
2. Run this prompt: `Explain what this file does in simple terms: @workshop/samples/book-app-project/book_app.py`
3. Run this prompt: `Generate a function that validates a book title and returns a friendly error message if it is empty.`
4. Ask one follow-up in the same session: `Which issue should I fix first if I only have 10 minutes?`

<details>
<summary>See demo output (optional)</summary>

![Code review demo](../assets/firststeps-code-review-demo.gif)

![Explain code demo](../assets/firststeps-explain-code-demo.gif)

![Generate code demo](../assets/firststeps-generate-code-demo.gif)

</details>

### Task 2: Plan the Fix Before Coding

![Plan mode workflow](../assets/firststeps-plan-mode.png)

1. In the same session, run: `/plan Add validation for empty book titles before a book is saved.`
2. Read the step-by-step plan and check whether it covers where to change code, how to test, and what edge cases to handle.

### Task 3: Automate a Quick One-Shot Task

![Programmatic mode workflow](../assets/firststeps-programmatic-mode.png)

1. Exit interactive mode: `/exit`
2. Run this one-shot command in your terminal:
	`copilot -p "Generate a Python function named validate_title(title) that returns a friendly error message when the title is empty, otherwise returns None."`
3. Run this one-shot compare command:
	`copilot -p "In one sentence, compare interactive, plan, and programmatic mode."`

### Wrap Up: Resume and Brief Your Team

1. Run: `copilot --resume=first-steps-demo`
2. Ask: `Summarize what each mode was best for in a 3-row table.`
3. Carry this same book-app task into Chapter 02, where you improve answer quality with better context.

## How To Follow Along

- Follow the steps in order: investigate, plan, automate, recap.
- Keep the same task theme (book title validation) across all three modes.
- Compare how each mode changes depth and style of output.
- Use the final recap as your workshop speaking summary.
- If responses get broad, narrow the prompt to one file and one clear objective.

## Quick Mode Guide

- Interactive mode: best for back-and-forth exploration.
- Plan mode: best for thinking through a bigger task first.
- Programmatic mode: best for one-shot prompts and quick tasks.

## Your Practice Step

Use all three modes for one new task: handling invalid publication year input.

## What Success Looks Like

You should see that each mode gives a different kind of help: conversational (interactive), step-by-step planning (plan), and one-shot output (programmatic).