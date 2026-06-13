# Agent Compatibility Protocol

## Purpose

Keep z-cdma usable by Codex, Claude, Gemini, and other agents without binding core workflow logic to one tool environment.

## Core Rules

- Use Markdown-first protocols, manifests, briefs, status files, handoffs, and memory records.
- Keep skill use agent-agnostic: describe the workflow, inputs, outputs, and review gates before tool-specific mechanics.
- Codex, Claude, Gemini, and other agents should follow the same files and protocols for context routing, stage gates, memory, collaboration, and conflict resolution.
- Tool-specific instructions belong in compatibility notes, not core logic.

## Compatibility Notes

- Compatibility notes may explain command syntax, available tools, path handling, browser behavior, or local app details for a specific agent.
- Compatibility notes must not change protocol priority, memory scope, promotion rules, or public/private boundaries.
- When a tool cannot perform a protocol step directly, the agent should use the nearest safe equivalent and record any limitation that affects the task.

## Portability Rules

- Prefer plain Markdown, stable paths, and explicit artifact names.
- Avoid hidden state that only one agent can read.
- Keep public framework protocols independent from local-only content projects.
