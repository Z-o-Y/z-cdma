---
name: platform-adaptation
version: 0.1.0
scope: common
agent_agnostic: true
description: Adapt publish materials to generic platform templates without account-specific strategy.
---

# Purpose

Use this skill to adapt titles, summaries, descriptions, captions, thumbnails notes, and metadata into generic platform-ready formats.

# When To Use

Use it after a script, package, or rendered output exists and the project needs public-facing publish materials.

# Inputs

- Content summary or final script.
- Render index or final output details.
- Target platform template.
- Generic length, formatting, and metadata constraints.

# Context Routing

Read the project publish materials and the selected generic platform template. Do not load or apply account-specific strategy, private performance records, or personal posting rules.

# Workflow

1. Confirm the target generic platform template.
2. Extract publishable claims, hooks, and metadata from approved content.
3. Adapt titles, descriptions, captions, tags, and thumbnail notes to the template.
4. Check length, formatting, and consistency constraints.
5. Mark any items that require human or account-level review.

# Outputs

- Platform-formatted title options.
- Description or caption draft.
- Generic tag or metadata suggestions.
- Thumbnail or cover notes.
- Review flags.

# Memory Writeback

Record the template used, generated publish materials, review flags, and selected final options when known.

# Quality Checklist

- Materials match the selected generic template.
- No account-specific strategy is included.
- Adapted copy remains faithful to the approved content.
- Human review flags are explicit.

# Agent Compatibility

This skill is agent-agnostic. It can be used with any platform template that is generic, public-safe, and separate from private account strategy.
