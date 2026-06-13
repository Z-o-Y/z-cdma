# Memory Layers Protocol

## Purpose

Define how z-cdma stores working history, stable knowledge, active summaries, and promotion candidates without mixing public framework logic with local content workspace data.

## Layers

- `raw`: append-only activity traces, human edits, agent actions, source notes, and audit evidence.
- `structured`: stable project or domain knowledge organized for reuse.
- `digest`: compressed active context for the current project, domain, or thread of work.
- `promotion`: reviewed candidates that may become long-term knowledge, reusable skills, asset indexes, or public framework improvements.
- `local long-term`: confirmed local knowledge that should remain outside public GitHub when it contains private domains, projects, assets, or operating details.
- `framework candidate`: generic improvements that may be suitable for the public z-cdma framework after review.

## Vertical Compression

- Raw memory preserves evidence.
- Structured memory extracts stable facts, practices, preferences, and decisions.
- Digest memory compresses active context for fast routing.
- Promotion memory separates reviewed candidates from ordinary work notes.
- Long-term memory accepts only confirmed durable knowledge with clear scope.

## Horizontal Categories

- `content_knowledge`: facts, examples, source interpretations, domain positions, and reusable arguments.
- `expression_style`: voice, tone, title style, hooks, pacing, phrases to use or avoid, and audience fit.
- `production_method`: workflows, tools, prompts, editing patterns, asset conventions, and quality checks.
- `operation_feedback`: publishing results, platform behavior, audience response, metrics, and review lessons.

## Usage Rules

- Keep local domain and project memory out of public framework files.
- Prefer digest for active work and structured memory for stable reuse.
- Return to raw memory only when evidence, conflicts, audit detail, or unclear human changes require it.
