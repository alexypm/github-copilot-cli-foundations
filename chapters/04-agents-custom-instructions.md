# 04 - Agents and Custom Instructions

![Chapter 04: Agents and Custom Instructions](../assets/ch04-header.png)

## What You Will Do

See how a specialist agent changes the style and consistency of the answer.

In this chapter, you will compare a general prompt with a specialist agent and see how custom instructions change the result.

## Goal

By the end of this chapter, you should understand when to use a specialist agent instead of a general prompt.

## Choose Your Own Adventure

If you are short on time, start with one path and return for the rest.

| I want to... | Start with... |
|---|---|
| See quality difference fast | Task 1: Compare General vs Specialist Output |
| Define reusable team standards | Task 2: Define Team Rules |

For full value, complete Task 1 and Task 2 in order.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

## Real-World Analogy: Hiring Specialists

Agents are like hiring the right specialist for a specific job instead of asking one general helper to do everything.

![Hiring specialists analogy](../assets/agents-hiring-specialists-analogy.png)

In this chapter you will:

1. Compare generic output with specialist output.
2. Capture what changed and why it is better.
3. Turn those patterns into reusable team rules.

### Start Here: Start as a General Reviewer

1. Start Copilot: `copilot --name=agents-demo`

## *New to Agents?* Start Here!

1. **Try a built-in agent immediately:**
	```bash
	/plan Add input validation for book year in the book app
	```
2. **Inspect a custom agent example:** `.github/agents/python-reviewer.agent.md`
3. **Remember the core idea:** agents change how Copilot reasons for a class of tasks, not just one prompt.

## How Agents Work

Use this quick model:

| Type | How You Use It | Best For |
|---|---|---|
| Built-in agent | `/plan`, `/review`, or automatic routing | Common workflows like planning and review |
| Custom agent | `/agent` picker or `copilot --agent=<name>` | Team-specific behavior and standards |

Helpful checks during practice:

1. Ask: `Which agent are you using right now?`
2. Ask: `What constraints or focus areas are active for this agent?`

### Task 1: Compare General vs Specialist Output

#### Baseline first

Start with a general prompt so you can compare it fairly against specialist output.

#### Why this matters

This shows how role-specific instructions improve consistency and depth.

1. Run this generic prompt: `Review @workshop/samples/book-app-project/books.py`
2. If needed, load the local workshop agent file: `Copy-Item workshop/agents/python-reviewer.agent.md .github/agents/python-reviewer.agent.md`
3. Run `/agent`, select `python-reviewer`, then run: `Review @workshop/samples/book-app-project/books.py`
4. Run: `Compare the generic review and python-reviewer review in a short table.`

<details>
<summary>See an agent demo (optional)</summary>

![Python reviewer demo](../assets/agents-python-reviewer-demo.gif)

</details>

### Task 2: Define Team Rules

#### Turn behavior into standards

After comparison, capture the good patterns as team guidance.

1. Run: `Where do custom instructions live in this project?`
2. Run: `Show a minimal custom instruction set that enforces concise bug-first reviews.`
3. Run: `How can a team share and reuse this same agent setup?`

### Wrap Up: Resume and Explain the Choice

1. Exit with `/exit`
2. Resume with `copilot --resume=agents-demo`
3. Ask: `Summarize when to use generic prompts vs specialist agents in three bullets.`
4. Continue to Chapter 05 to package these standards into reusable skills.

## How To Follow Along

- Follow the steps in order: baseline, specialist, then team rules.
- Compare baseline and specialist output for specificity and consistency.
- Keep one session open so the compare step has full context.
- Use the resume step to show saved conversation continuity.
- If you edit agent files, restart or reopen the Copilot session before re-testing.

## Your Practice Step

Create one small team agent idea (for testing or security) and draft a 3-rule instruction set.

## What Success Looks Like

You should see that a specialist agent gives more focused, repeatable feedback than a general prompt.

## Workshop Tip

Use specialist agents when the same quality bar must be enforced repeatedly.