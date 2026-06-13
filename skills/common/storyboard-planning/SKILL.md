---
name: storyboard-planning
version: 0.1.0
scope: common
agent_agnostic: true
description: Turn scripts into storyboard and visual planning notes.
---

# Purpose

Use this skill to map script beats into visual sequences, shot ideas, on-screen text, and asset needs.

# When To Use

Use it after script planning and before production packaging, editing, or asset creation.

# Inputs

- Approved or working script draft.
- Target format and length.
- Visual style constraints.
- Available assets or required asset types.

# Context Routing

Read the current script and visual planning files only. Add production or asset inventory context only when the storyboard must be packaged for execution.

# Workflow

1. Split the script into visual beats.
2. Assign each beat a visual intent.
3. Note candidate shots, graphics, screen elements, or supporting media.
4. Identify asset gaps and timing risks.
5. Create storyboard notes that production packaging can use.

# Outputs

- Storyboard beat table or notes.
- Visual intent by segment.
- Asset gap list.
- Timing and continuity notes.

# Memory Writeback

Record storyboard version, major visual decisions, asset gaps, and follow-up actions in the project activity log.

# Quality Checklist

- Every major script beat has a visual plan.
- Visual notes support the message instead of adding unrelated material.
- Asset gaps are explicit.
- Timing assumptions are practical for the target format.

# Agent Compatibility

This skill is agent-agnostic. It can be used with text tables, visual notes, or any storyboard format supported by the project.
