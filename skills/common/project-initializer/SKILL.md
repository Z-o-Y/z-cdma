---
name: project-initializer
version: 0.1.0
scope: common
agent_agnostic: true
description: Create a new local content project from approved templates and initial metadata.
---

# Purpose

Use this skill to start a local content project with the expected folder shape, template files, and initial planning records.

# When To Use

Use it when a user asks to create a new content project, clone a template for a new idea, or prepare a blank project workspace.

# Inputs

- Project name or working title.
- Selected template or project type.
- Initial topic, audience, platform, or format notes, if available.
- Local destination path.

# Context Routing

Confirm that the task is a local content project task. Read only the template index, selected template files, and any local project registry required to avoid naming conflicts.

# Workflow

1. Confirm the project belongs in local project space.
2. Select the closest approved template.
3. Create the project directory and required starter files.
4. Fill only known metadata and leave unknown fields explicit.
5. Add a first status or handoff note when the project needs continuation.
6. Record initialization in the raw activity log.

# Outputs

- New local project directory.
- Starter project files copied or created from templates.
- Initial metadata, status, and next step notes.

# Memory Writeback

Append a raw activity entry with project name, template used, created paths, known metadata, and unresolved setup questions.

# Quality Checklist

- Project path is local and does not overwrite existing work.
- Template source is recorded.
- Unknown fields remain visible instead of guessed.
- No account-specific or private material is added to public files.

# Agent Compatibility

This skill is agent-agnostic. It can be followed by any assistant that can inspect templates and create files in the permitted local workspace.
