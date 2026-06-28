---
name: z-cdma-admin
description: Administer z-cdma local storage by initializing the storage template, checking structure, planning legacy migrations, exporting backups, dry-running restores, and validating public/private boundaries. Use for setup, migration, backup, restore, storage health checks, or when z-cdma-start cannot find a usable storage root.
---

# z-cdma Admin

## Purpose

Use this for low-frequency storage management. Keep destructive operations explicit and reversible.

## Operations

### Initialize

Create a new storage root from `templates/storage/` when the user provides a target path or accepts the default `./storage`. Do not place real memories in templates.

### Check

Verify these files exist:

- `storage/README.md`
- `storage/config.md`
- `storage/memory/digest.md`
- `storage/memory/index.md`
- `storage/skills/index.md`
- `storage/work/`
- `storage/library/`
- `storage/backup/`

Report missing paths and recommend exact creation or copy steps.

### Migrate

Plan moves from legacy local paths into `storage/`:

- `domains/` -> `storage/library/domains/`
- `skills_local/` -> `storage/skills/`
- `knowledge/` -> `storage/library/knowledge/`
- `content_projects/` -> `storage/work/`
- `assets_index/` -> `storage/library/assets_index/`
- `publishing_local/` -> `storage/work/publishing/`
- `outputs/` -> `storage/work/outputs/`
- `renders/` -> `storage/work/renders/`

Default migration mode is dry-run. Do not delete legacy paths after copy unless the user explicitly asks.

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
