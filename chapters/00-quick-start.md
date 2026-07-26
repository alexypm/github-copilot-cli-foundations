# 00 - Quick Start

![Chapter 00: Quick Start](../assets/ch00-header.png)


## What You Will Do

Get Copilot CLI running, sign in, and send one successful prompt.

In this chapter, you will get Copilot CLI running, sign in, verify the sample app, and try one hello prompt.

## Goal

By the end of this chapter, you should be able to start Copilot CLI and get a reply back.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

![Copilot sign-in flow](../assets/auth-device-flow.png)
### Start Here: First Launch

1. Run this command from the repository root: `copilot`
2. In Copilot, run this command: `/login`
3. Confirm you can return to the Copilot prompt after browser sign-in.
4. You are now ready for Chapter 01, where you will solve your first mini task on the book app.

### Task 1: Confirm the Sample App Works

1. Run these commands to verify the sample app: `cd workshop/samples/book-app-project` then `python book_app.py list`
2. Return to the repository root and start Copilot again: `cd ../..` then `copilot`

### Task 2: Send Your First Prompt

3. Run this prompt: `Say hello and tell me what you can help with`

### Wrap Up: Recover Quickly If Something Fails

1. If login fails, run `/login` again in the same session.
2. If path errors occur, run `cd ../..` and retry from repository root.

## How To Follow Along

- Follow the steps in order: launch, verify, prompt, recover.
- Type each command yourself instead of just watching.
- Pause after each step and confirm expected output.
- Use the recovery step if something fails.

## What Success Looks Like

- Copilot CLI starts successfully.
- The browser login flow completes.
- The sample book app lists books.
- Copilot answers with a short welcome message.

## Your Practice Step

Repeat the full flow once on your own machine without notes.

## If You Need To Move Faster

Only run these essentials: `copilot`, `/login`, `python book_app.py list`, and one prompt.