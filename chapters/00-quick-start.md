# 00 - Quick Start

![Chapter 00: Quick Start](../assets/ch00-header.png)


## What You Will Do

Get Copilot CLI running, sign in, and send one successful prompt.

In this chapter, you will get Copilot CLI running, sign in, verify the sample app, and try one hello prompt.

## Goal

By the end of this chapter, you should be able to start Copilot CLI and get a reply back.

## Follow Along

Use the book app sample as your practice example: `workshop/samples/book-app-project/`.

## Workshop Access Requirement

Before setup, sign in with the **demo organization account** using the login details provided earlier.

1. Use the provided demo organization credentials in your browser.
2. Confirm you can access the workshop repository in that organization.
3. Use that same signed-in account for Codespaces and Copilot CLI login.

This is required because Codespaces access and the Copilot demo license are assigned to the demo organization account for the workshop.

## Choose Your Setup Path

Pick one path first, then continue to Start Here.

### GitHub Codespaces (Zero Setup)

1. Fork this repository: `https://github.com/sharanyaskonandur/beginner-github-cli-workshop`.
2. Open **Code** -> **Codespaces** -> **Create codespace on main**.
3. Wait for the environment to finish building.
4. Verify the sample app works: `cd workshop/samples/book-app-project` then `python book_app.py list`.
5. Return to repo root: `cd ../..`.

### Local Setup

1. Clone the repository: `git clone https://github.com/sharanyaskonandur/beginner-github-cli-workshop`.
2. Enter the repo: `cd beginner-github-cli-workshop`.
3. Install Copilot CLI using one option:
	- `npm install -g @github/copilot`
	- `winget install GitHub.Copilot` (Windows)
	- `brew install copilot-cli` (macOS/Linux)
4. Verify Python sample app: `cd workshop/samples/book-app-project` then `python book_app.py list`.
5. Return to repo root: `cd ../..`.

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

## ✅ You're Ready!

You are ready for Chapter 01 when:

- Copilot CLI starts successfully.
- The browser login flow completes.
- The sample book app lists books.
- Copilot answers with a short welcome message.

If you are short on time, run only these essentials:

- `copilot`
- `/login`
- `python book_app.py list`
- `Say hello and tell me what you can help with`

Continue to [01 - First Steps](01-setup-and-first-steps.md).