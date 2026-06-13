---
name: context-router
version: 0.1.0
scope: common
agent_agnostic: true
description: Route content work to the right context, skill, stage, and writeback path.
---

# Purpose

Use this skill to decide what context is needed before a content task and what should be written back after the task changes project state.

# When To Use

Use it at the start of content work, when switching stages, or when a task may affect project status, memory, handoff, or reusable framework material.

# Inputs

- User request or task brief.
- Available project, memory, status, or handoff entry files.
- Known content stage, if already selected.

# Context Routing

Keep routing narrow. Load only files required to understand the task, stage, and writeback target.

# Workflow

1. Identify whether the user task concerns public framework, local domain capability, or local content project.
2. Read the minimal entry files.
3. Select the content stage.
4. Add only the needed memory layer.
5. Call the relevant common or local skill.
6. Write activity to raw log.
7. Update digest, status, or handoff when changed.
8. Never write public framework core from an ordinary content task.

# Outputs

- Routing decision.
- Selected content stage.
- Minimal context file list.
- Next skill or workflow step.
- Writeback targets.

# Memory Writeback

Record the routing decision, files consulted, stage selected, and any changed status or handoff target in the appropriate raw activity log.

# Quality Checklist

- Scope is classified before files are edited.
- Only necessary context is loaded.
- Public framework material is not changed for ordinary project work.
- Writeback target is explicit.

# Agent Compatibility

This skill is agent-agnostic. Any assistant can apply it using local file reads, project conventions, and safe writeback rules.
