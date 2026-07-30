# 06 - MCP Servers

![Chapter 06: MCP Servers](../assets/ch06-header.png)

## What You Will Do

See how Copilot can connect to external tools and live context through MCP.

In this chapter, you will inspect MCP servers, try a live-context prompt, and define safe usage boundaries.

## Goal

By the end of this chapter, you should understand what MCP adds and why trust boundaries matter.
## CLI Commands for This Chapter

| Command | Where to run it | Purpose |
|---|---|---|
| `copilot --name=mcp-demo` | Terminal | Start a named session |
| `/mcp show` | Copilot session | Show configured MCP servers |
| `/mcp list` | Copilot session | Show attached servers and status |
| `/mcp search` | Copilot session | Discover available MCP servers |
| `/login` | Copilot session | Sign in again if GitHub access fails |
| `copilot --resume=mcp-demo` | Terminal | Resume the workshop session |

Optional server-management commands:

```text
/mcp enable <server-name>
/mcp disable <server-name>
/mcp auth <server-name>
```

## Bookstore Use Case: Check Live Repository Context

Your validation change is ready for review. Before the team ships it, you want live repository context that local files cannot provide: recent commits, open issues, and connected tool capabilities.

Keep one Copilot session open and use this repository as the shared example.

<img src="../assets/using-mcp-servers.png" alt="Using MCP servers" width="650">

## Live Follow-Along

### Step 1: Start and Inspect MCP


1. Start Copilot: `copilot --name=mcp-demo`.
2. Run `/mcp show`.
3. Find the built-in `github` server and note whether it is enabled.

> **Checkpoint:** If `github` is unavailable, follow the facilitator's screen for the live query and continue with the trust discussion.
<img src="../assets/mcp-multi-server-workflow.png" alt="MCP workflow" width="650">

### Step 2: Fetch Live Release Context


Run:

```text
Using GitHub MCP tools, list the five most recent commits and up to three open issues for this repository. If there are no open issues, say so.
```

Then ask:

```text
What information in that response came from live GitHub state rather than local file content?
```

> **Checkpoint:** Identify at least one result that can change without any local file changing.

<details>
<summary>See a full MCP workflow demo (optional)</summary>

<img src="../assets/mcp-workflow-demo.gif" alt="MCP workflow demo" width="650">

</details>

### Step 3: Connect Live Context to the Book-App Change

<img src="../assets/mcp-issue-to-pr-workflow.png" alt="Issue to PR workflow" width="650">

Run:

```text
Based on the live repository context, give me three checks to make before opening a pull request for the book-title validation change.
```

> **Checkpoint:** Separate checks based on local code from checks based on live repository state.

### Step 4: Discuss Trust Boundaries

Run:

```text
For the enabled MCP servers, summarize what data each server can read and what actions it may be able to take.
```

Ask: `Which tools should remain disabled unless this task requires them?`

Key rule: enable only the servers and tools needed for the current task, and review permissions before allowing write actions.

### Optional Facilitator Demo: Discover Another Server

Registry contents and setup prompts vary, so participants can watch this step instead of installing a server.

1. Run `/mcp search`.
2. Open one server entry and explain the capability and permissions it requests.
3. Cancel setup unless that server is approved for the workshop environment.
4. Run `/mcp show` again to confirm the enabled server list did not change unexpectedly.

### Wrap Up: Resume and Share MCP Value

1. Exit with `/exit`
2. Resume with `copilot --resume=mcp-demo`
3. Ask: `Summarize MCP value in this workshop in four bullets.`
4. You have completed the story: local understanding, a tested code change, reusable standards, and live repository context.

### What We Achieved Together

We inspected available MCP servers, fetched live commit and issue context, connected that information to release readiness, and discussed the permissions and trust boundaries of external tools.

Together, we carried one book-app improvement from initial exploration through implementation, testing, specialist review, reusable skills, and live repository context.