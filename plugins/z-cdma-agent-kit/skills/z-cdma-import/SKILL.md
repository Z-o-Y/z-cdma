---
name: z-cdma-import
description: Use when first onboarding existing work created outside z-cdma, including prior knowledge bases, notes, drafts, project folders, references, or process materials that need inventory, safe import planning, project reconstruction, or conversion into z-cdma memory candidates.
---

# z-cdma Import

## Purpose

Use this for first-time import of external work into z-cdma. It turns prior materials from other tools, folders, notes, or self-managed projects into usable `storage/` context without treating import as a blind directory move.

Do not use this for z-cdma device migration, backup restore, or storage version migration. Those belong to `z-cdma-admin`.

## Target Model

External materials enter through `storage/inbox/imports/<batch-id>/`, then leave the inbox as one of:

- `storage/work/<project-id>/` for active or resumable projects.
- `storage/library/sources/` for retained reference sources.
- `storage/memory/candidates/` for reusable experience candidates.
- `storage/skills/` only after explicit curation proves a repeatable workflow.

The inbox is a staging and audit area, not the long-term place to continue work.

## Workflow

1. Resolve the storage root using the same order as `z-cdma-start`.
2. Create or select an import batch under `storage/inbox/imports/<batch-id>/`.
3. Inventory the external source into `source_manifest.md`: source path, owner, format, size, sensitivity, and why it matters.
4. Classify each material as project, source, experience candidate, local Skill candidate, archive-only, or reject.
5. Write `import_plan.md` before copying or reorganizing anything.
6. Default to dry-run. If execution is approved, use copy or reference mode; never delete source material during import.
7. Reconstruct project context in `storage/work/<project-id>/` when the material represents ongoing work.
8. Extract reusable lessons into `storage/memory/candidates/` instead of promoting directly to long-term memory.
9. Write `import_report.md` and update indexes only for the items that should be discoverable.

## Scenario Rules

### Knowledge Base to Experience Base

For prior knowledge bases, do not import every note as a long-term memory. Preserve source location or copies in `storage/library/sources/`, then extract only reusable, triggerable lessons into `storage/memory/candidates/`.

Each candidate needs source, scope, trigger, evidence, and risk notes. Use `z-cdma-curate` later to merge, reject, or promote candidates.

### Existing Work to Local Project

For existing works, drafts, scripts, research folders, or process materials, create a resumable project under `storage/work/<project-id>/`. The project must include a short `README.md`, `status.md`, `import_log.md`, and `memory/digest.md` before daily work continues through `z-cdma-start`.

## Safety Rules

- Ask before copying large folders, private credentials, account exports, or licensed media.
- Preserve provenance: every imported item must trace back to a source batch.
- Prefer references over copies for large binaries and media.
- Keep private imported material inside `storage/` or a user-approved external private path.
- Do not promote imported claims directly to `memory/notes/` or public framework files.
- If a source contains mixed public/private material, treat it as private until reviewed.

## Output

Return an import report with storage root, batch id, sources reviewed, classification summary, planned or completed writes, unresolved decisions, privacy risks, and the next skill to use (`z-cdma-start`, `z-cdma-curate`, or `z-cdma-admin`).