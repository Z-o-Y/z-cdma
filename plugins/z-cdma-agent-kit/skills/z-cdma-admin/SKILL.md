---
name: z-cdma-admin
description: Administer z-cdma local storage by initializing the storage template, checking structure, planning z-cdma storage migrations, exporting backups, dry-running restores, and validating public/private boundaries. Use for setup, device migration, backup, restore, storage health checks, or when z-cdma-start cannot find a usable storage root.
---

# z-cdma Admin

## Purpose

Use this for low-frequency storage management. Keep destructive operations explicit and reversible.

Do not use this for first-time import of work created outside z-cdma. External notes, knowledge bases, old project folders, and process materials belong to `z-cdma-import`.

## Operations

### Initialize

Create a new storage root from `templates/storage/` when the user provides a target path or accepts the default `./storage`. Do not place real memories in templates.

### Check

Verify these files and folders exist:

- `storage/README.md`
- `storage/config.md`
- `storage/inbox/`
- `storage/memory/digest.md`
- `storage/memory/index.md`
- `storage/skills/index.md`
- `storage/work/`
- `storage/library/`
- `storage/backup/`

Report missing paths and recommend exact creation or copy steps.

### Migrate z-cdma Storage

Use this for device migration, storage portability, storage version migration, or migration from legacy z-cdma local paths into `storage/`.

Legacy z-cdma local path mapping:

- `domains/` -> `storage/library/domains/`
- `skills_local/` -> `storage/skills/`
- `knowledge/` -> `storage/library/knowledge/`
- `content_projects/` -> `storage/work/`
- `assets_index/` -> `storage/library/assets_index/`
- `publishing_local/` -> `storage/work/publishing/`
- `outputs/` -> `storage/work/outputs/`
- `renders/` -> `storage/work/renders/`

Default migration mode is dry-run. Do not delete legacy paths after copy unless the user explicitly asks.

If the source material was created by other tools or predates z-cdma, recommend `z-cdma-import` instead of applying this mapping mechanically.

### Backup

Create a backup under `storage/backup/` or a user-provided external path. A backup plan must state included roots, excluded large assets, timestamp, and restore target assumptions.

### Restore

Always dry-run first. Report conflicts, missing files, version mismatch, and overwrite risks before writing.

## Safety Rules

- Ask before overwriting, deleting, or moving existing user data.
- Keep backup archives and private storage outside public framework commits.
- Prefer copy-then-verify for migration.
- Keep public framework validation separate from private content validation.

## Output

Return an admin report with storage root, operation type, changed or proposed paths, dry-run status, warnings, and next action.