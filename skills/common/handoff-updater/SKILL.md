---
name: handoff-updater
version: 0.1.0
scope: common
agent_agnostic: true
description: Update status and handoff notes for human or assistant continuation.
---

# Purpose

Use this skill to leave a project in a clear state for the next human or assistant who continues the work.

# When To Use

Use it at the end of a work session, after blockers appear, when ownership changes, or before pausing a project.

# Inputs

- Current task summary.
- Completed work.
- Changed files.
- Remaining tasks.
- Blockers, risks, or review needs.
- Next owner, if known.

# Context Routing

Read current status, recent activity, and the handoff file only. Load detailed project artifacts only when needed to verify current state.

# Workflow

1. Summarize completed work.
2. Record changed files and important decisions.
3. List remaining tasks and blockers.
4. Assign next owner or continuation mode when known.
5. Update status and handoff notes.
6. Log the handoff update in raw activity.

# Outputs

- Updated status note.
- Handoff summary.
- Next actions.
- Blocker and review list.

# Memory Writeback

Append the handoff update, next actions, and blocker state to the raw activity log or project memory target.

# Quality Checklist

- Next action is clear enough for continuation.
- Blockers and risks are visible.
- Completed work is separated from remaining work.
- Handoff does not assume private context not written down.

# Agent Compatibility

This skill is agent-agnostic. It supports continuation by any human or assistant using explicit status and handoff records.
