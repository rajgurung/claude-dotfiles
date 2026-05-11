---
name: decompose
description: Break a SPEC.md into ordered, parallelizable tasks in TASKS.md. Works in any repo.
user_invocable: true
---

# /decompose - Task Decomposition

You are breaking a project spec into implementable tasks.

## Step 1: Read the Spec

- Read `SPEC.md` in the current project root
- If no SPEC.md exists, tell the user to run `/plan` first
- Understand the full scope before decomposing

## Step 2: Identify Tasks

Break the spec into tasks that are:
- **Small**: Each task should take 15-45 minutes for a sub-agent
- **Independent where possible**: If two tasks touch different files, mark them as parallel
- **Sequential where necessary**: If task B depends on task A's output, mark the dependency
- **Testable**: Each task should have a way to verify it's done

## Step 3: Map Dependencies

For each task, determine:
- Can it run in parallel with other tasks?
- Does it block or get blocked by another task?
- What files does it touch?

## Step 4: Generate TASKS.md

Create `TASKS.md` in the project root:

```markdown
# Tasks

Generated from SPEC.md on [date].

## Parallel Group 1 (can run simultaneously)
- [ ] **Task 1**: [Description] — Files: [list] — Verify: [how to test]
- [ ] **Task 2**: [Description] — Files: [list] — Verify: [how to test]

## Sequential (must follow Group 1)
- [ ] **Task 3**: [Description] — Depends on: Task 1 — Files: [list] — Verify: [how to test]

## Parallel Group 2 (after sequential tasks)
- [ ] **Task 4**: [Description] — Files: [list] — Verify: [how to test]
- [ ] **Task 5**: [Description] — Files: [list] — Verify: [how to test]

## Final
- [ ] **Task 6**: Integration testing — Verify: [full test suite passes]
```

## Step 5: Confirm

Present the task list to the user. Ask:
- "Does this breakdown look right?"
- "Any tasks missing or too large?"
- "Ready to start implementing?"

## Notes

- If TASKS.md already exists, read it and ask if they want to re-decompose or continue.
- For small specs (bug fixes), this might be just 2-3 tasks. Don't over-decompose.
- Save task structure to memory for future reference.
