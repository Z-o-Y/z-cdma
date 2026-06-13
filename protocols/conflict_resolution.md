# Conflict Resolution Protocol

## Purpose

Resolve disagreements between instructions, human edits, status, handoff, and memory using a predictable priority order.

## Priority Order

1. Current user instruction.
2. Recent human edit.
3. status.md trusted artifact.
4. handoff.md current conclusion.
5. memory/digest.md.
6. memory/structured/.
7. memory/raw/activity_log.md.

## Resolution Rules

- Prefer the highest-priority source that directly applies to the current decision.
- Treat lower-priority sources as supporting evidence, not authority, when they conflict with higher-priority sources.
- If a recent human edit appears intentional, preserve it unless the current user instruction says otherwise.
- If status and handoff disagree, use status for trusted artifact state and handoff for the most recent conclusion unless a higher-priority source resolves the conflict.
- Record the conflict and resolution when the decision affects future work.

## Stop And Ask

- Stop and ask before irreversible changes.
- Stop and ask before deleting, replacing, publishing, or externally sharing assets when intent is unclear.
- Stop and ask when resolving the conflict would require discarding recent human work without explicit instruction.
