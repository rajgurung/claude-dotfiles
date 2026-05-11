---
name: retro
description: Capture learnings from current session/project. Saves to memory and optionally to Obsidian vault. Works in any repo.
user_invocable: true
---

# /retro - Retrospective and Knowledge Capture

You are running a retrospective to capture learnings before context-switching or wrapping up.

## Step 1: Gather Context

- Read SPEC.md and TASKS.md if they exist
- Check what was accomplished in this session (git log, recent changes)
- Review any issues encountered

## Step 2: Ask the User

Quick questions (skip if obvious from context):

1. **What worked well?** Any patterns, tools, or approaches worth repeating?
2. **What didn't work?** Any dead ends, gotchas, or things to avoid next time?
3. **Where did we leave off?** What's the current state and what's next?
4. **Any decisions made?** Architectural choices, trade-offs, or commitments worth recording?

## Step 3: Save to Memory

Save the following to the project's MEMORY.md:

- Current state: what's done, what's in progress, what's next
- Key decisions and why they were made
- Any patterns or approaches that worked well
- Gotchas or things to avoid

## Step 4: Save to Obsidian (if configured)

If Obsidian MCP is available, create or update a note in the vault:

- Path: `projects/[project-name].md`
- Include: goal, decisions, patterns, current state
- Link to relevant concept notes if they exist
- Use `[[wikilinks]]` for cross-referencing

If Obsidian is not configured, skip this step silently.

## Step 5: Summary

Tell the user:
- "Captured [X] learnings to memory"
- "Updated Obsidian note at projects/[name].md" (if applicable)
- "You can pick up where you left off by reading MEMORY.md next session"

## Notes

- This skill should be quick. Don't turn it into a 20-minute interview.
- If the session was just a quick bug fix, the retro can be 2-3 lines.
- Scale the retrospective to match the work done.
- For long-running projects, focus on what changed since last retro, not everything.
