---
name: production-package
version: 0.1.0
scope: common
agent_agnostic: true
description: Create production-ready shot lists, asset requirements, editing checklists, tool prompts, and render indexes.
---

# Purpose

Use this skill to convert a script and storyboard into an execution package for recording, asset creation, editing, and rendering.

# When To Use

Use it when a project is ready to move from planning into production or when production materials need to be reviewed for completeness.

# Inputs

- Script draft or final script.
- Storyboard notes.
- Format and delivery requirements.
- Available assets and known tool constraints.

# Context Routing

Read the script, storyboard, and project production notes. Load tool-specific or asset inventory files only when needed for the package.

# Workflow

1. Create a shot list from storyboard beats.
2. List required assets, source files, and generated materials.
3. Prepare editing checklist and sequence notes.
4. Draft tool prompts or production instructions in reusable form.
5. Build a render index with outputs, versions, and review targets.
6. Record open production blockers.

# Outputs

- Shot list.
- Asset requirements.
- Editing checklist.
- Tool prompts or production instructions.
- Render index.
- Blocker list.

# Memory Writeback

Log package version, required assets, render targets, blockers, and next owner or step.

# Quality Checklist

- Production package traces back to approved script and storyboard.
- Asset requirements are concrete and reusable.
- Editing checklist is ordered enough for execution.
- Render index names outputs and review status clearly.

# Agent Compatibility

This skill is agent-agnostic. It supports any production toolchain by keeping instructions structured, explicit, and portable.
