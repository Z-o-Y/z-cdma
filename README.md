# z-cdma

`z-cdma` is a general self-media content creation framework for Agent-assisted workflows.

It provides public framework assets for content ideation, research material organization, argument shaping, script planning, storyboard planning, production packages, publishing preparation, review, Agent memory, and handoff.

## Public vs Local

The same directory can be used as both a public framework repository and a local content workspace.

Public framework paths are listed in `PUBLIC_MANIFEST.md`.

Local domain capabilities and content projects are ignored by Git:

- domains/
- skills_local/
- knowledge/
- content_projects/
- assets_index/
- publishing_local/
- outputs/
- renders/
- tmp/

## Quick Start

1. Clone or copy this repository.
2. Use `templates/content_project/` to create a local project under `content_projects/`.
3. Use `skills/common/context-router/` before content tasks to choose context.
4. Keep real production content in ignored local directories.
5. Run `tools/validate-public-boundary.ps1` before publishing.

## Non-Goals

- This repository does not publish concrete content projects.
- This repository does not publish private domain knowledge.
- This repository does not store video files, audio files, editing projects, credentials, or account-specific platform strategies.
