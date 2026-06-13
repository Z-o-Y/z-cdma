# Install Into an Existing Workspace

Use this guide when you already have a private content workspace and want to add the public `z-cdma` framework without overwriting local material.

## Copy Public Framework Files

Copy only public framework assets into the existing workspace:

- `protocols/`
- `templates/`
- `skills/common/`
- `optional_modules/`
- `examples/public_minimal_project/`
- `tools/`
- public root files listed in `PUBLIC_MANIFEST.md`, if you want the workspace to also behave like a framework checkout

Do not overwrite local content, local domains, private skills, knowledge bases, media indexes, publishing notes, outputs, or renders. If a destination path already exists, compare it first and merge intentionally.

## Add Local Ignore Rules

Make sure the workspace `.gitignore` includes these local-only paths:

```gitignore
domains/
skills_local/
knowledge/
content_projects/
assets_index/
publishing_local/
outputs/
renders/
tmp/
```

These rules keep private content and production artifacts out of the public framework repository.

## Create Local-Only Directories

Create the local directories you plan to use:

```powershell
New-Item -ItemType Directory -Force domains, skills_local, knowledge, content_projects, assets_index, publishing_local, outputs, renders, tmp
```

After installation, create projects under `content_projects/` from `templates/content_project/`. Keep public framework updates separate from local production work so future upgrades are easier to review.

