---
name: z-cdma-start
description: Start local z-cdma work by locating the user's storage root, loading the minimum memory digest and indexes, routing the task to relevant local memories or skills, and planning safe writeback. Use for daily tasks that need local context, project continuity, personal memory, private skills, or z-cdma storage.
---

# z-cdma Start

## Purpose

Use this as the daily entrypoint for z-cdma work. Keep the context small, load only relevant local memory, and never publish or copy private storage content into public framework files.

## Storage Resolution

Find the storage root in this order:

1. Path explicitly provided by the user.
2. `Z_CDMA_STORAGE_ROOT` environment variable.
3. `storage/` under the current workspace.
4. A user-approved path found from local workspace notes.

If no storage root exists, stop and recommend `z-cdma-admin` initialization. Do not invent local memory or create business-specific folders from assumptions.

## Workflow

1. Read `storage/README.md` to understand the local entrypoint and project conventions.
2. Read `storage/config.md` only when task routing, defaults, or enabled modules matter.
3. Read `storage/memory/digest.md` before broader memory files.
4. Search `storage/memory/index.md` for task trigger matches.
5. Search `storage/skills/index.md` for local Skill trigger matches.
6. Load only matched memory notes, project files, or local Skills.
7. Perform the requested task using the narrowest useful context.
8. Decide whether the work produced writeback material.

## Writeback Decision

Write to local storage only when it preserves future continuity or reuse:

- Activity trace: append to `storage/memory/log/`.
- Reusable but unreviewed learning: write to `storage/memory/candidates/`.
- Project continuity: update the relevant file under `storage/work/`.
- Stable local preference or method: recommend `z-cdma-curate`; do not directly promote unless the user requested curation.

## Safety Rules

- Keep private data inside `storage/`.
- Prefer `digest.md` and indexes over raw logs.
- When multiple memories match, choose the narrowest scope.
- When memory conflicts with direct user instructions, follow the user and record the conflict locally if useful.
- Do not modify public framework files for ordinary local work.

## Output

Report the storage root used, the indexes or memory files loaded, any local Skill selected, and any writeback recommendation.
