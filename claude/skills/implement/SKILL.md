---
name: implement
description: Execute tasks from TASKS.md using sub-agents for parallel work. Works in any repo.
user_invocable: true
---

# /implement - Task Execution

You are executing the task plan from TASKS.md.

## Step 1: Read the Plan

- Read `TASKS.md` in the current project root
- If no TASKS.md exists, tell the user to run `/decompose` first
- Identify which tasks are already completed (checked off)
- Find the next group of tasks to execute

## Step 2: Execute Tasks

For each task group:

### Parallel tasks
- Launch sub-agents for tasks that can run simultaneously
- Each sub-agent gets: the task description, relevant file paths, and verification criteria
- Wait for all sub-agents to complete before moving to the next group

### Sequential tasks
- Execute one at a time
- Verify each task passes its criteria before moving to the next

## Step 3: Verify Each Task

After a task completes:
- Run the verification step defined in TASKS.md
- If tests exist, run them
- If verification fails, fix the issue before marking complete
- Update TASKS.md: check off completed tasks

## Step 4: Report Progress

After each group completes, report to the user:
- What was completed
- Any issues encountered
- What's next

## Step 5: Final Verification

After all tasks are done:
- Run the full test suite if one exists
- Verify against the success criteria in SPEC.md
- Report: "All tasks complete. Here's what was built."

## Notes

- If a task fails repeatedly, stop and ask the user rather than brute-forcing
- Keep TASKS.md updated as you go so progress is visible
- For small projects, this might just be executing 2-3 tasks directly without sub-agents
- Save any notable patterns or issues to memory
