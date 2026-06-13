# GitHub Publish Guide

Use this checklist before pushing the public `z-cdma` framework to GitHub.

## Validate the Boundary

Run the boundary validator:

```powershell
.\tools\validate-public-boundary.ps1
```

Fix any reported tracked private paths or disallowed files before publishing.

## Inspect Git State

Review the pending changes:

```powershell
git status --short
```

Review tracked files:

```powershell
git ls-files
```

Only public framework files listed in `PUBLIC_MANIFEST.md` should be tracked and pushed.

## Confirm Nothing Private Is Tracked

Before pushing, verify Git is not tracking:

- private content projects
- local domains
- private skills under `skills_local/`
- private knowledge bases
- credentials or account secrets
- media files, editing project files, renders, or outputs
- `assets_index/`
- `publishing_local/`

Do not push if `git status --short` or `git ls-files` shows private content, credentials, media files, local domains, or content projects.

## Push Public Framework Files Only

After validation and review, commit and push only public framework files. If the same directory is also a local workspace, treat every publish as a boundary check: the repository should contain the framework, not your private production pipeline or unpublished content.

