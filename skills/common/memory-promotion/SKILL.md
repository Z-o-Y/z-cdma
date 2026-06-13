---
name: memory-promotion
version: 0.1.0
scope: common
agent_agnostic: true
description: Create post-review promotion candidates from local memory for possible durable reuse.
---

# Purpose

Use this skill to prepare reviewed memory promotion candidates after a human or explicit review step identifies information that may be reusable.

# When To Use

Use it after review of activity logs, project digests, or publishing results. Promotion candidates are created after review, not during ordinary work.

# Inputs

- Reviewed memory digest or activity range.
- Review notes.
- Candidate facts, preferences, reusable patterns, or process improvements.
- Promotion target rules.

# Context Routing

Read only the reviewed memory sources and promotion rules. Do not scan unrelated logs or promote unreviewed ordinary task notes.

# Workflow

1. Confirm that a review step has already occurred.
2. Identify candidate durable information from reviewed sources.
3. Separate reusable facts from project-only details.
4. Write promotion candidates with evidence and scope.
5. Mark candidates as pending until accepted by the proper review process.

# Outputs

- Promotion candidate entries.
- Evidence references.
- Scope and confidence notes.
- Rejected or local-only items, when useful.

# Memory Writeback

Write only candidate records. Do not directly alter durable memory unless the governing review process explicitly accepts the candidate.

# Quality Checklist

- Candidates are created after review, not during ordinary work.
- Each candidate has evidence and scope.
- Project-only or private details are not promoted to public memory.
- Pending status is clear.

# Agent Compatibility

This skill is agent-agnostic. Any assistant or human reviewer can prepare candidates while leaving final acceptance to the configured process.
