# Conflict Resolution

## When To Enable

Enable this module when a project has repeated real conflicts about direction, claims, tone, scope, source interpretation, or production choices. It is intended for recurring disagreements, not for ordinary minor edits.

## Files Added

- `conflict_log.md`: A neutral record of active and resolved conflicts, including the competing options and current status.
- `version_decision.md`: A record of final version choices, rationale, and what alternatives were rejected.

## How It Changes Context Routing

Context routing should check unresolved entries in `conflict_log.md` before advancing the project. When a conflict affects output quality or publication readiness, the project should route through decision review before drafting, packaging, or publishing continues. Final choices should be reflected in `version_decision.md` so later work does not reopen settled decisions without new evidence.

## How To Disable

Disable this module after conflicts are resolved and the project has a stable decision path. Keep the records for audit context, but remove them from the active routing checklist unless a new recurring conflict appears.
