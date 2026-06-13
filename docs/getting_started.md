# Getting Started

`z-cdma` is a general self-media content creation framework for agent-assisted workflows. One directory can serve two roles at the same time:

- A public framework repository, containing reusable protocols, templates, common skills, examples, tools, and docs.
- A local content workspace, containing private domains, project drafts, media indexes, outputs, renders, and publishing notes.

Use `PUBLIC_MANIFEST.md` as the authority for this boundary. Public framework paths may be published. Local-only paths are ignored by Git and should stay private.

## Create a Local Project

Create each real content project under `content_projects/` from the public project template:

```powershell
New-Item -ItemType Directory -Force content_projects
Copy-Item -Recurse templates/content_project content_projects/my-project
```

Replace `my-project` with a stable project id. Keep drafts, research notes, scripts, storyboards, handoffs, and review notes inside that project folder.

## Route Context First

Before starting content work, use `skills/common/context-router/`. The router helps decide which project, domain context, memory, and workflow stage should be loaded before a task begins.

This is especially important when the same workspace contains multiple local projects or private domain packs.

## Keep Projects Private

Content projects are local production work. Do not add `content_projects/` to Git, and do not publish scripts, research notes, private references, platform strategy, credentials, or account-specific material.

The framework includes video workflow templates, including production package, storyboard, shot list, editing checklist, render index, and publishing templates. Use those templates for planning and handoff, but keep heavy files external or in ignored local paths such as `outputs/`, `renders/`, or your editing/storage system.

