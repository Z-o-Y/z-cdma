---
name: memory-summarizer
version: 0.1.0
scope: common
agent_agnostic: true
description: Compress raw and structured memory into a concise project digest.
---

# Purpose

Use this skill to summarize accumulated activity and structured memory into a digest that supports future work without requiring full log review.

# When To Use

Use it after several task entries, before handoff, after publishing review, or when a project digest is stale.

# Inputs

- Raw activity logs.
- Structured memory updates.
- Current project status and handoff notes.
- Existing digest, if present.

# Context Routing

Read only the relevant memory range, structured updates, and current digest. Avoid loading unrelated projects or account-level materials.

# Workflow

1. Select the memory range to summarize.
2. Extract durable decisions, current state, blockers, and next actions.
3. Compress repeated activity into concise bullets.
4. Preserve unresolved questions and review needs.
5. Update the digest with date or version context.

# Outputs

- Updated memory digest.
- Current decisions and assumptions.
- Blockers and open questions.
- Recommended next actions.

# Memory Writeback

Write the digest update and record the summarized range so later agents can trace what was compressed.

# Quality Checklist

- Digest is shorter than source logs.
- Important decisions and blockers are preserved.
- Uncertainty remains visible.
- Summary range is recorded.

# Agent Compatibility

This skill is agent-agnostic. It works with plain text or structured memory records and does not require a specific assistant runtime.
