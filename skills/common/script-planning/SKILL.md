---
name: script-planning
version: 0.1.0
scope: common
agent_agnostic: true
description: Turn argument structure into script drafts and script review notes.
---

# Purpose

Use this skill to convert a topic plan or argument outline into a draft script and a reviewable set of script notes.

# When To Use

Use it after topic planning and before storyboard planning, production planning, or platform adaptation.

# Inputs

- Topic plan.
- Argument structure or outline.
- Desired format, length, platform, and tone.
- Required talking points, exclusions, and source notes.

# Context Routing

Read the current topic plan, outline, and any script draft being revised. Avoid loading storyboard or publishing files unless requested.

# Workflow

1. Confirm the script goal and target format.
2. Convert the argument structure into a scene, section, or beat sequence.
3. Draft script copy with transitions and clear claims.
4. Mark review notes for weak logic, missing context, unclear wording, or unsupported points.
5. Provide revision priorities for the next pass.

# Outputs

- Script draft.
- Beat or section map.
- Script review notes.
- Revision checklist.

# Memory Writeback

Log the script version, major structure choices, unresolved review issues, and next recommended action.

# Quality Checklist

- Script follows the approved topic boundaries.
- Claims and examples are reviewable.
- Draft has a clear beginning, middle, and ending.
- Review notes distinguish required fixes from optional refinements.

# Agent Compatibility

This skill is agent-agnostic. It can be used by assistants or humans working with plain text drafts and structured notes.
