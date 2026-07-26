# 00 - Quick Start

![Copilot sign-in flow](../../00-quick-start/assets/auth-device-flow.png)

## What You Will Do

Get Copilot CLI running, sign in, and send one successful prompt.

## What This Chapter Covers

In this chapter, you will get Copilot CLI running, sign in, verify the sample app, and try one hello prompt.

## Goal

By the end of this chapter, you should be able to start Copilot CLI and get a reply back.

## Follow Along

1. Open the repository root in a terminal.
2. Start Copilot CLI.
3. Sign in with GitHub.
4. Verify the sample app works.
5. Ask one simple hello prompt.

## How To Follow Along

- Type each command yourself instead of just watching.
- Pause after each step and wait for the result.
- Compare your output with the group if something looks different.
- If a step fails, raise your hand and move on when the presenter says so.

## Try These Commands

```bash
copilot
```

```bash
/login
```

```bash
cd samples/book-app-project
python book_app.py list
```

```bash
cd ../..
copilot
> Say hello and tell me what you can help with
```

## What Success Looks Like

- Copilot CLI starts successfully.
- The browser login flow completes.
- The sample book app lists books.
- Copilot answers with a short welcome message.

## Your Practice Step

Repeat the hello prompt on your own machine and confirm you see a response.

## If You Need To Move Faster

Skip the extra explanation and only do install, login, verify, and one prompt.