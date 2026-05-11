#!/bin/bash
set -e

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "=== Claude Dotfiles Setup ==="
echo ""
echo "This will symlink your agentic OS into ~/.claude/"
echo "Existing files will be backed up to ~/.claude/backups/"
echo ""

# Create backup directory
mkdir -p "$CLAUDE_DIR/backups/pre-dotfiles-$(date +%Y%m%d)"
BACKUP_DIR="$CLAUDE_DIR/backups/pre-dotfiles-$(date +%Y%m%d)"

# --- Symlink global CLAUDE.md ---
if [ -f "$CLAUDE_DIR/CLAUDE.md" ]; then
    echo "Backing up existing CLAUDE.md"
    cp "$CLAUDE_DIR/CLAUDE.md" "$BACKUP_DIR/CLAUDE.md"
fi
ln -sf "$DOTFILES_DIR/claude/CLAUDE.md" "$CLAUDE_DIR/CLAUDE.md"
echo "Linked: CLAUDE.md"

# --- Symlink skills ---
mkdir -p "$CLAUDE_DIR/skills"
for skill_dir in "$DOTFILES_DIR/claude/skills"/*/; do
    skill_name=$(basename "$skill_dir")
    if [ -d "$CLAUDE_DIR/skills/$skill_name" ]; then
        echo "Backing up existing skill: $skill_name"
        cp -r "$CLAUDE_DIR/skills/$skill_name" "$BACKUP_DIR/skill-$skill_name"
    fi
    ln -sf "$skill_dir" "$CLAUDE_DIR/skills/$skill_name"
    echo "Linked: skills/$skill_name"
done

# --- Symlink agents ---
mkdir -p "$CLAUDE_DIR/agents"
for agent_file in "$DOTFILES_DIR/claude/agents"/*.md; do
    agent_name=$(basename "$agent_file")
    if [ -f "$CLAUDE_DIR/agents/$agent_name" ]; then
        echo "Backing up existing agent: $agent_name"
        cp "$CLAUDE_DIR/agents/$agent_name" "$BACKUP_DIR/$agent_name"
    fi
    ln -sf "$agent_file" "$CLAUDE_DIR/agents/$agent_name"
    echo "Linked: agents/$agent_name"
done

echo ""
echo "=== Skills Installed ==="
echo "  /plan       - Structured project planning"
echo "  /decompose  - Break spec into tasks"
echo "  /implement  - Execute tasks with sub-agents"
echo "  /retro      - Capture learnings"
echo ""

# --- memsearch ---
echo "=== memsearch Setup ==="
if command -v memsearch &> /dev/null; then
    echo "memsearch is already installed."
else
    echo "memsearch is not installed."
    echo ""
    echo "To install memsearch, run:"
    echo "  pip install memsearch"
    echo ""
    echo "Then run this setup script again to configure hooks."
fi

echo ""
echo "=== Done ==="
echo ""
echo "Open any project and type /plan to get started."
