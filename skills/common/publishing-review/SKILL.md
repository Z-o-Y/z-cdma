---
name: publishing-review
version: 0.1.0
scope: common
agent_agnostic: true
description: Record publishing data, comments, review notes, and promotion candidates using generic review structure.
---

# Purpose

Use this skill to capture what was published, what happened after publishing, and what should be reviewed or promoted later.

# When To Use

Use it after publishing, after collecting comments or performance notes, or when preparing post-publish review records.

# Inputs

- Publish date and output identifier.
- Final publish materials.
- Comments, review notes, or observed results.
- Generic review template.

# Context Routing

Read the public generic review template and the local project publish record. Keep generic review fields separate from local platform or account strategy.

# Workflow

1. Record the published output and publish materials.
2. Capture comments, observations, and review notes.
3. Separate factual publishing data from interpretation.
4. Identify reusable lessons and promotion candidates for later review.
5. Mark any account-specific strategy questions for local handling outside the public template.

# Outputs

- Publishing record.
- Comment and review note summary.
- Generic lessons learned.
- Promotion candidates for later review.
- Local strategy flags, if any.

# Memory Writeback

Append publishing activity, review observations, and promotion candidates to local project memory or raw logs as appropriate.

# Quality Checklist

- Publishing data is recorded separately from interpretation.
- Public generic review template is not mixed with local platform or account strategy.
- Comments and review notes are attributable to the relevant output.
- Promotion candidates are clearly marked as candidates, not accepted memory.

# Agent Compatibility

This skill is agent-agnostic. Any assistant or human reviewer can use it to maintain structured post-publish records.
