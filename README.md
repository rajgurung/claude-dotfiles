# claude-dotfiles

My personal agentic OS for Claude Code. Install once, works in every project.

## What This Is

A portable development system that gives Claude Code:
- Universal skills (`/plan`, `/retro`, `/decompose`, `/implement`) that work in any repo
- Auto-capture memory via memsearch (remembers conversations across months)
- Knowledge base via Obsidian (human-readable, synthesized learnings)
- Global conventions that apply everywhere

## Quick Setup

```bash
git clone git@github.com:rajgurung/claude-dotfiles.git ~/Codes/claude-dotfiles
cd ~/Codes/claude-dotfiles
./setup.sh
```

## What Gets Installed

```
~/.claude/
├── skills/
│   ├── plan/SKILL.md        # /plan - structured project planning
│   ├── retro/SKILL.md       # /retro - capture learnings, update knowledge base
│   ├── decompose/SKILL.md   # /decompose - break spec into parallel tasks
│   └── implement/SKILL.md   # /implement - execute tasks with sub-agents
├── agents/
│   └── rails-expert.md      # Rails specialist agent
├── CLAUDE.md                 # Global conventions
└── settings.json             # Permissions, hooks, plugins, theme (merged, not overwritten)
```

## Dependencies

- [memsearch](https://github.com/zilliztech/memsearch) - auto-capture session memory
- [Obsidian](https://obsidian.md) - knowledge base (optional, added later)
- [obsidian-claude-code-mcp](https://github.com/iansinnott/obsidian-claude-code-mcp) - MCP bridge (optional)

## How It Works

1. You `cd` into any project
2. Run `claude` and type `/plan`
3. Claude interviews you, checks past memory, outputs a SPEC.md
4. `/decompose` breaks the spec into tasks
5. `/implement` farms tasks to sub-agents
6. `/retro` captures what you learned for next time

Your agentic OS travels with you. Projects don't need any setup.

## Settings

`claude/settings.json` holds the shared settings: tool permissions, the `bd prime` hooks (skipped if `bd` isn't installed), plugins, theme and model options.

`setup.sh` copies it when a machine has no settings yet. If a machine already has settings (for example a work laptop), it merges them: the machine's own values win, lists are combined, and a backup is saved in `~/.claude/backups/`.

Secrets never go in this repo. This repo is public. Add tokens on each machine under `"env"` in `~/.claude/settings.json`.
