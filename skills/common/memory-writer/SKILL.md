---
name: memory-writer
version: 0.1.0
scope: common
agent_agnostic: true
description: Append raw activity and structured memory updates for content work.
---

# Purpose

Use this skill to record what happened during a task in raw activity logs and structured memory update files.

# When To Use

Use it after meaningful project actions, decisions, status changes, reviews, or handoffs.

# Inputs

- Task summary.
- Files changed or consulted.
- Decisions made.
- Open questions.
- Status or handoff changes.

# Context Routing

Read the relevant project memory index or current log target only. Do not search unrelated memory layers unless the task requires cross-project context.

# Workflow

1. Identify the correct raw activity log.
2. Append a concise factual activity entry.
3. Create or update structured memory fields only when a durable decision, preference, or reusable fact was established.
4. Keep observations separate from recommendations.
5. Link memory entries to project status or handoff when relevant.

# Outputs

- Raw activity log entry.
- Structured memory update, when warranted.
- Open question list, when present.

# Memory Writeback

This skill is the writeback step. Write factual entries, avoid invented context, and preserve uncertainty.

# Quality Checklist

- Activity entry says what changed and why.
- Structured memory is only used for reusable information.
- Open questions are not treated as decisions.
- Private project details remain in local memory.

# Agent Compatibility

This skill is agent-agnostic. It depends on plain structured records and can be followed by any assistant or human editor.
