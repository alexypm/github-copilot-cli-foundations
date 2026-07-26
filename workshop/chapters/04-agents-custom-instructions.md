# 04 - Agents and Custom Instructions

![Using agents](../assets/using-agents.png)

## What You Will Do

See how a specialist agent changes the style and consistency of the answer.

In this chapter, you will compare a general prompt with a specialist agent and see how custom instructions change the result.

## Goal

By the end of this chapter, you should understand when to use a specialist agent instead of a general prompt.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

1. Run this generic prompt first: `Review @workshop/samples/book-app-project/books.py`
2. If needed, load the local workshop agent file first: `Copy-Item workshop/agents/python-reviewer.agent.md .github/agents/python-reviewer.agent.md`. Then run `/agent`, select `python-reviewer`, and run: `Review @workshop/samples/book-app-project/books.py`
3. Run this prompt: `Compare the generic review and python-reviewer review in a short table.`
4. Run this prompt: `Where do custom instructions live in this project?`
5. Run this prompt: `How can a team share and reuse this same agent setup?`

## How To Follow Along

- Run the generic prompt first.
- Run the specialist prompt second.
- Read both answers before moving on.
- Notice which answer is more specific and repeatable.

## Your Practice Step

Compare a general answer and a specialist answer.

## What Success Looks Like

You should see that an agent can give more focused, repeatable feedback.

## Workshop Tip

Use specialists when the same quality bar matters every time.