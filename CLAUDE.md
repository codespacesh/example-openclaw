# OpenClaw Example

AI agent development workspace using OpenClaw on codespace.sh.

## Stack
- **Runtime:** Node.js 22
- **Agent Framework:** OpenClaw
- **Container:** Docker-in-Docker with XFCE desktop + VNC

## Development
OpenClaw should already be installed globally. To get started:
    openclaw onboard
    openclaw start

Check status:
    openclaw status

## Project Structure
- coder/main.tf — Coder workspace template config

## Working with Issues
When launched from a GitHub issue, check the issue details:
    gh issue view $ISSUE_NUMBER

Create a branch, implement changes, then open a PR:
    gh pr create --fill
