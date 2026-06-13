# Context Router Protocol

## Purpose

Route every content task through the smallest reliable context set. The router keeps z-cdma usable as both a public framework repository and a local content workspace by separating public framework knowledge from local project and domain context.

## Read Order

1. Public framework manifest.
2. Project manifest.
3. Brief.
4. Status.
5. Handoff.
6. Memory index.
7. Memory digest.

## Expansion Rules

- Use structured memory for stable project knowledge that has been reviewed, reused, or confirmed across work sessions.
- Use raw logs only for conflict checks, audit trails, or unclear human changes that cannot be resolved from status, handoff, digest, or structured memory.
- Use domain memory only when the active task is relevant to that local domain.
- Prefer the narrowest relevant memory path before loading broader framework context.
- Stop expanding when the current task can be completed without increasing ambiguity or risk.

## Writeback Rules

- Record raw activity for meaningful work, decisions, and material state changes.
- Update digest files when active context has changed enough that future agents need a compressed view.
- Update status files when task state, stage, blockers, trusted artifacts, or next steps change.
- Update handoff files when continuity between agents or sessions would otherwise be lost.
- Record early promotion observations in raw activity logs, review notes, or structured memory when they are useful for later review.
- Create entries under `promotion_after_review/` only after the review stage; do not promote ordinary working notes directly into durable framework knowledge.
