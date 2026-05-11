---
name: plan
description: Structured project planning interview that produces a SPEC.md. Works in any repo.
user_invocable: true
---

# /plan - Project Planning

You are starting a structured project planning session. Follow these steps exactly.

## Step 1: Understand Context

Before asking questions:
- Read the current directory structure (ls, check for existing SPEC.md, CLAUDE.md, package.json, Gemfile, etc.)
- Check memsearch or memory for any past work on this project or similar projects
- Identify what kind of project this is (new, existing, migration, etc.)

## Step 2: Interview

Ask the user these questions one at a time. Wait for each answer before proceeding.

1. **Goal**: What are we building or changing? What problem does it solve?
2. **Scope**: What is in scope and what is explicitly out of scope?
3. **Constraints**: Any tech stack requirements, deadlines, or limitations?
4. **Users**: Who uses this? What are the key user flows?
5. **Success criteria**: How do we know when this is done?
6. **Risks**: What could go wrong? What are the unknowns?

If this is a small task (bug fix, minor feature), adapt: skip irrelevant questions and keep the spec lightweight.

## Step 3: Check Past Context

After the interview, search memory for:
- Similar projects or features built before
- Patterns that worked well
- Mistakes to avoid

Share any relevant findings with the user: "Last time you built auth, you used X approach. Want to follow the same pattern?"

## Step 4: Generate SPEC.md

Create a `SPEC.md` in the project root with this structure:

```markdown
# Project: [Name]

## Goal
[One paragraph summary]

## Scope
### In Scope
- [item]

### Out of Scope
- [item]

## Technical Approach
[Stack, architecture decisions, key patterns]

## Key Flows
1. [Flow description]

## Success Criteria
- [ ] [Criterion]

## Risks and Unknowns
- [Risk]: [Mitigation]

## Open Questions
- [Anything unresolved from the interview]
```

## Step 5: Confirm

Present the spec to the user. Ask: "Does this look right? Anything to add or change?"

Only finalize SPEC.md after user confirmation.

## Notes

- If a SPEC.md already exists, read it first and ask if they want to update or start fresh.
- Keep specs proportional to project size. A bug fix gets 10 lines, not 50.
- Always save the project context to memory after planning.
