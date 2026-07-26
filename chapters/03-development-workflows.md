# 03 - Development Workflows

![Chapter 03: Development Workflows](../assets/ch03-header.png)

## What You Will Do

Use Copilot for everyday engineering work: review, refactor, debug, test, and Git tasks.

## Goal

By the end of this chapter, you should see how Copilot can help with the main daily development tasks.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

## Big-Picture Journey

This chapter follows one realistic developer path from triage to delivery:

1. Find the highest-impact issue first.
2. Improve code structure safely.
3. Fix the riskiest bug with the smallest safe change.
4. Add tests so the fix stays fixed.
5. Communicate clearly for commit and PR review.

## Real-World Workflow Model

Think of this chapter as five practical workflow lanes you can run in the same project.

![Five workflows swimlane](../assets/workflows-five-swimlane.png)

You will move from finding issues to shipping changes:

1. Review and prioritize.
2. Refactor safely.
3. Debug the main risk.
4. Add tests for confidence.
5. Prepare commit and PR communication.

### Start Here: You Are Assigned a Quality Pass

1. Start Copilot: `copilot --name=workflow-demo`
2. Keep this same session open for all workflow prompts below.

## *New to Development Workflows?* Quick Warm-Up

1. **Run one focused review first:**
	`Review @workshop/samples/book-app-project/books.py for bugs and quality issues.`
2. **Convert results into priority:**
	`Create a checklist grouped by Critical, High, Medium, Low.`
3. **Pick only one first action:**
	`Which one issue should I fix first and why?`

## How This Chapter Works

Use this loop for each task:

1. Run one clear prompt.
2. Ask one follow-up that increases actionability.
3. Capture one concrete output to carry to the next task.

Treat each task as input to the next one. Do not restart from scratch.

### Task 1: Review and Prioritize

Start by creating a prioritized issue list. This gives you a confident starting point for all later tasks.

![Code review workflow](../assets/workflows-code-review-swimlane.png)

#### Basic Review

This step uses the `@` symbol to reference a file so Copilot can read the exact code before reviewing it.

#### Why this matters

Starting with review gives you a clear list of issues so you can choose the most important fix first.

1. Run: `Review @workshop/samples/book-app-project/books.py for bugs, quality issues, and missing validation.`
2. Run: `Now create a markdown checklist grouped as Critical, High, Medium, Low.`
3. Run: `Which one issue should I fix first and why?`

<details>
<summary>See demo output (optional)</summary>

![Code review demo](../assets/workflows-code-review-demo.gif)

</details>

### Task 2: Clean Up the Code

Use your top issue from Task 1 as context while refactoring so improvements stay grounded in real risk.

![Refactoring workflow](../assets/workflows-refactoring-swimlane.png)

#### Refactor with intent

Ask for readability improvements while preserving behavior. This keeps risk low for beginner teams.

1. Run: `Refactor @workshop/samples/book-app-project/book_app.py to make the code easier to read without changing behavior.`
2. Run: `List the specific refactor steps before applying them.`
3. Run: `What behavior checks should I run after this refactor?`

<details>
<summary>See demo output (optional)</summary>

![Refactor demo](../assets/workflows-refactor-demo.gif)

</details>

### Task 3: Debug the Main Risk

Now focus on one concrete failure mode and apply the smallest safe fix before broad changes.

![Debugging workflow](../assets/workflows-debugging-swimlane.png)

#### Debug from symptoms

Describe what is wrong and where you see it. Copilot can then reason about likely root cause and smallest safe fix.

1. Run: `Help me debug this issue in @workshop/samples/book-app-project/books.py and explain the likely cause.`
2. Run: `Show me the smallest safe fix first.`
3. Run: `What test should I add to prevent this bug from coming back?`

<details>
<summary>See demo output (optional)</summary>

![Debug demo](../assets/workflows-debug-demo.gif)

</details>

### Task 4: Add Safety Tests

After refactor and bug fix work, lock behavior with tests so regressions are caught early.

![Test generation workflow](../assets/workflows-testgen-swimlane.png)

#### Test what can break

Edge-case tests protect your refactor and bug fix work from regressions.

1. Run: `Generate tests for @workshop/samples/book-app-project/books.py.`
2. Run: `Prioritize tests for edge cases and validation failures.`
3. Run: `Which generated test gives the highest value first?`

<details>
<summary>See demo output (optional)</summary>

![Test generation demo](../assets/workflows-testgen-demo.gif)

</details>

### Task 5: Prepare to Ship

Finish by turning technical work into clear reviewer communication.

![Git workflow](../assets/workflows-git-swimlane.png)

#### Communicate clearly in Git

Good commit and PR text helps reviewers understand what changed and why.

1. Run: `Summarize my current changes in one short paragraph.`
2. Run: `Write a short commit message for the changes I made.`
3. Run: `Draft a 4-bullet PR description with Summary, Changes, Testing, and Risks.`

<details>
<summary>See demo output (optional)</summary>

![Git integration demo](../assets/workflows-git-demo.gif)

</details>

### Wrap Up: Resume and Share the Summary

1. Exit with `/exit`
2. Resume with `copilot --resume=workflow-demo`
3. Ask: `Summarize the top recommendation from each workflow in a table.`
4. Take one repeated review task into Chapter 04 to see how a specialist agent improves consistency at scale.

## How To Follow Along

- Follow the steps in order from review to ship.
- Use the follow-up prompt in each workflow to deepen the result.
- Keep one session open so Copilot can reuse earlier context.
- Resume the same named session at the end to demo saved conversation history.
- If output gets too broad, narrow scope to one file and one explicit objective.

## Your Practice Step

Repeat the same flow on a different file and compare the final summary.

## What Success Looks Like

You should see that Copilot can help across the same project from multiple angles, and you should be able to explain one concrete output from each workflow.

## Workshop Tip

Keep each workflow focused: one main prompt, one follow-up prompt, one takeaway.