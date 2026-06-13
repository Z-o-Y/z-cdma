# Extension Guide

Extensions let a local workspace add private domain knowledge and task-specific skills without changing the public framework.

## Add a Local Domain

Create local domain packs under `domains/<domain-id>/`:

```powershell
New-Item -ItemType Directory -Force domains/my-domain
```

A domain can contain private references, style rules, audience assumptions, publishing constraints, examples, or domain-specific workflows. Keep domain ids stable and descriptive.

Domains are private by default. They are ignored by Git and should not be published unless you intentionally convert part of the work into a generic framework contribution.

## Add a Local Skill

Create private skills in one of two places:

- `skills_local/` for workspace-level private skills.
- `domains/<domain-id>/skills/` for skills that only make sense inside one domain.

Use `templates/skill/` as the starting point when creating a new skill:

```powershell
New-Item -ItemType Directory -Force skills_local
Copy-Item -Recurse templates/skill skills_local/my-skill
```

Keep local skills private by default, especially when they include private examples, account context, unpublished strategy, proprietary prompts, or references to local assets.

## Promote Carefully

Promote an extension to the public framework only when it is generic, reusable across workspaces, free of private content, and reviewed against the public/private boundary.

Before promotion, remove private examples, credentials, media references, project names, unpublished research, and account-specific publishing logic. Public generic skills usually belong under `skills/common/`; public templates usually belong under `templates/`.

