# Global Conventions

These conventions apply to all projects unless overridden by a project-level CLAUDE.md.

## Communication Style

- Be concise and direct. Lead with the answer.
- No bold, italics, or em dashes in blog posts or long-form content.
- No trailing summaries restating what was just done.

### Plain English

Explanations must be easy to read on the first pass.

- Short sentences. One idea each. Split anything with clauses piled up.
- Answer first, reasoning after. Never build up to the conclusion.
- Plain words over precise-sounding ones. "Blocks you", not "precludes".
- Keep the real technical terms (idempotency, outbox, advisory lock, Packwerk).
  Explain each once in a sentence, then use it freely. Simplify the prose, not
  the substance.
- Bold labels or short headers to break up anything longer than a few lines.
- No literary constructions. No "it is X, not Y", no clause stacking, no
  building to a flourish.
- Be concrete. Name the file, the number, the actual failure.
- When asked "what is X", answer in a few lines. Offer more depth rather than
  supplying it unasked.

### Accuracy

- Read the actual source before describing how code behaves. A research summary
  is a pointer, not a source.
- When explaining why something exists, find the comment or commit that says
  why. Do not reason toward a plausible justification.
- Label anything unverified as unverified rather than smoothing over the gap.

## Code Standards

- Write simple, readable code. Avoid over-engineering.
- No unnecessary abstractions for one-time operations.
- Only add comments where logic is not self-evident.
- Prefer editing existing files over creating new ones.

## Git

- Do not add "Co-Authored-By: Claude" footer to commit messages.
- Keep commit messages concise and descriptive.
- Never force push to main/master without explicit confirmation.

### Screenshots in PRs

Every PR description gets a "Screenshots" section with a relevant image of the change.

- UI change: screenshot the changed screen. Add a phone-width shot if the layout is responsive, and a before/after when that shows the change better.
- No visual change (backend, refactor, config): screenshot something that shows the effect, such as passing tests, an API response or CLI output. If nothing fits, write "No visual change" and one line on how it was verified.
- Capture from the real running app, not a mockup. Headless Chrome via Playwright works when the visible browser is unavailable.
- Hosting: GitHub's API can't upload images into a PR body. Push the images to an orphan `pr-assets` branch (never merged) under `pr-<number>/`, using a temporary worktree so the working branch isn't touched. Then reference them in the PR body by their `raw.githubusercontent.com/<owner>/<repo>/pr-assets/pr-<number>/<file>` URL.
- Check each image URL returns 200 before saying it's done. Raw links only render for public repos. For a private repo, ask before choosing a host.
- Keep images small: JPEG or WebP, about 1440px wide at most.

## Planning

- For non-trivial tasks, use /plan before writing code.
- Break work into small iterations. Avoid huge leaps.
- Run tests after each meaningful change.

## Memory

- Proactively save important decisions, context, and learnings to memory.
- When context-switching away from a long project, capture current state.
