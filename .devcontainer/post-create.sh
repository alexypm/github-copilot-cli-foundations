#!/usr/bin/env bash
set -euo pipefail

echo ">>> Updating Copilot CLI to latest..."
curl -fsSL https://gh.io/copilot-install | sudo bash

echo ">>> Ensuring gh-copilot extension is installed/updated..."
if gh extension list | grep -q "github/gh-copilot"; then
  gh extension upgrade github/gh-copilot || true
else
  gh extension install github/gh-copilot
fi

echo ">>> Adding 'copilot' alias..."
if ! grep -q "alias copilot='gh copilot'" ~/.bashrc; then
  echo "alias copilot='gh copilot'" >> ~/.bashrc
fi

echo ">>> Done. Next run:"
echo "    gh auth login"
echo "    gh auth refresh -h github.com -s read:org,repo,copilot"
echo "    copilot suggest \"write a hello world bash script\""
