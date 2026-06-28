---
name: z-cdma-start
description: Start local z-cdma work by locating the user's storage root, loading the minimum memory digest and indexes, routing the task to relevant local memories or skills, and planning safe writeback. Use for daily tasks that need local context, project continuity, personal memory, private skills, or z-cdma storage.
---

# z-cdma Start

## Purpose

Use this as the daily entrypoint for z-cdma work after storage exists and any external materials have already been imported. Keep the context small, load only relevant local memory, and never publish or copy private storage content into public framework files.

For first-time onboarding of prior notes, knowledge bases, old project folders, or materials created outside z-cdma, route to `z-cdma-import` first. For initialization, device migration, backup, restore, or storage health checks, route to `z-cdma-admin`.

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
3. If the task is about importing external existing work, stop and recommend `z-cdma-import`.
4. Read `storage/memory/digest.md` before broader memory files.
5. Search `storage/memory/index.md` for task trigger matches.
6. Search `storage/skills/index.md` for local Skill trigger matches.
7. Load only matched memory notes, project files, local Skills, or completed import reports.
8. Perform the requested task using the narrowest useful context.
9. Decide whether the work produced writeback material.

## Import Awareness

If a relevant import batch exists under `storage/inbox/imports/`, prefer its `import_report.md` and the reconstructed project files under `storage/work/`. Do not load raw external import material unless the user explicitly asks and the task requires it.

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