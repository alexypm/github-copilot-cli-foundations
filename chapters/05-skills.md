# 05 - Skills

![Chapter 05: Skills System](../assets/ch05-header.png)

## What You Will Do

Use a natural prompt to trigger a code-review skill automatically.

In this chapter, you will compare the skill-enabled review with the same review without custom instructions.

## Goal

By the end of this chapter, you should be able to explain how Copilot matches a natural prompt to a skill and applies repeatable team instructions.

## CLI Commands for This Chapter

| Command | Where to run it | Purpose |
|---|---|---|
| `copilot --name=skills-demo` | Terminal | Start the skill-enabled session |
| `/skills list` | Copilot session | List available skills |
| `/code-checklist <prompt>` | Copilot session | Invoke the skill directly |
| `copilot --name=skills-baseline --no-custom-instructions` | Terminal | Start a comparison session without custom instructions |
| `/exit` | Copilot session | End the current session |
| `copilot --resume=skills-demo` | Terminal | Resume the skill-enabled session |

## Bookstore Use Case: Automate the Quality Checklist

The specialist review in Chapter 04 showed that repeatable criteria improve consistency. Now the team will package that quality checklist as a skill that Copilot can discover from a natural request.

<img src="../assets/skills-power-tools-analogy.png" alt="Power tools analogy" width="300">

A skill is a reusable set of instructions for a specific task. Copilot can match a natural prompt to a relevant skill, or you can invoke the skill directly when you want explicit control.

## Live Follow-Along

### Step 1: Start the Shared Exercise

In **Terminal 1**, start a named interactive session:

```powershell
copilot --name=skills-demo
```

Keep this session open until the wrap-up.

### Step 2: Discover the Skill

#### Find what is available

Run:

```text
/skills list
```

Find `code-checklist` in the list. It should describe Python code quality, bugs, security issues, and best practices.

> **Checkpoint:** Do not continue until you can see `code-checklist`. If it is missing, tell the facilitator.

### Step 3: Trigger the Skill Naturally

Run this prompt exactly as shown. Do not type the skill name:

```text
Check @samples/book-app-project/books.py for Python code quality, bugs, security issues, and best practices.
```

Look for a checklist organized into **Code Quality**, **Input Validation**, **Testing**, and **Summary**. These headings come from the skill instructions.

<details>
<summary>See a trigger demo (optional)</summary>

<img src="../assets/skills-trigger-demo.gif" alt="Skills trigger demo" width="650">

</details>

### Step 4: Confirm the Skill Was Used

In the same session, run:

```text
What skills did you use for that response?
```

Confirm that Copilot reports using `code-checklist`.

> **Checkpoint:** Be ready to share one checklist item that Copilot applied without you spelling it out.

### Step 5: Compare Without Custom Instructions

#### Compare structure and actionability

Leave Terminal 1 open. In **Terminal 2**, start a separate interactive session with custom instructions disabled:

```powershell
copilot --name=skills-baseline --no-custom-instructions
```

Then run the exact same natural prompt:

```text
Check @samples/book-app-project/books.py for Python code quality, bugs, security issues, and best practices.
```

This interactive baseline keeps the response visible in PowerShell. Do not use the skill name in the prompt.

Compare the two outputs:

| Check | Skill-Enabled Response | Baseline Response |
|---|---|---|
| Uses the expected section headings | Yes or no | Yes or no |
| Checks input validation | Yes or no | Yes or no |
| Checks pytest coverage | Yes or no | Yes or no |
| Ends with an actionable summary | Yes or no | Yes or no |

> **Checkpoint:** The exact findings may vary. Focus on whether the skill made the structure and checks more consistent.

### Wrap Up: Resume and Pick the Right Tool

Return to Terminal 1:

1. Exit with `/exit`.
2. Resume with `copilot --resume=skills-demo`.
3. Ask:

	```text
	Summarize when to use a skill, when to use an agent, and when to use a plain prompt.
	```

### What We Achieved Together

We discovered the `code-checklist` skill, triggered it with a natural prompt, confirmed that Copilot used it, and compared its structured review with a no-custom-instructions baseline.

You have completed the workshop.