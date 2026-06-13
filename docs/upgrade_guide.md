# Upgrade Guide

Use this guide when bringing a newer `z-cdma` framework version into a workspace that may also contain private content.

## Review the Release

Read `CHANGELOG.md` first. Note any protocol, template, common skill, tool, or public manifest changes that affect your workflow.

## Compare the Public Manifest

Compare the old and new `PUBLIC_MANIFEST.md` files before copying anything. Treat the manifest as the boundary between public framework files and private local workspace files.

Update public framework files only. Typical public paths include:

- `protocols/`
- `templates/`
- `skills/common/`
- `optional_modules/`
- `examples/public_minimal_project/`
- `tools/`
- public root files listed in `PUBLIC_MANIFEST.md`
- `docs/`

## Preserve Local Work

Do not overwrite these local-only paths:

- `domains/`
- `skills_local/`
- `knowledge/`
- `content_projects/`
- `assets_index/`
- `publishing_local/`

Also preserve local production outputs such as `outputs/`, `renders/`, and `tmp/`.

If a local workspace has customized a public template or protocol, compare the files and decide whether to keep the local version, adopt the framework version, or split the local customization into `domains/` or `skills_local/`.

## Validate After Upgrade

After updating public framework files, rerun validation:

```powershell
.\tools\validate-public-boundary.ps1
```

Then inspect Git status to confirm only intended public framework files changed.

