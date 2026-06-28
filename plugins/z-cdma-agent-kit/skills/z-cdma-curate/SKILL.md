---
name: z-cdma-curate
description: Consolidate z-cdma local memories and private skills by reviewing logs, candidates, notes, imported experience candidates, and skill indexes, then merging, promoting, archiving, or converting reusable workflows into local Skills. Use for retrospectives, memory cleanup, repeated patterns, skill bloat, duplicate memories, or requests to turn experience into reusable methods.
---

# z-cdma Curate

## Purpose

Use this for deliberate memory and Skill maintenance. Do not run it as a hidden part of every daily task; curation should be explicit, reviewable, and scoped.

Imported candidates created by `z-cdma-import` are still unreviewed. Treat them as evidence-backed candidates, not as long-term memory.

## Inputs

- A storage root.
- A review scope such as project, date range, memory topic, candidate file, import batch, or Skill folder.
- Existing `storage/memory/index.md` and `storage/skills/index.md`.
- Relevant files from `memory/log/`, `memory/candidates/`, `memory/notes/`, `memory/archive/`, `skills/`, and completed import reports.

## Workflow

1. Confirm the curation scope before reading broad memory.
2. Read the current digest and indexes.
3. Review only the logs, candidates, notes, import reports, and Skills inside scope.
4. Group items by trigger scenario and reusable outcome.
5. Merge duplicates into the clearest existing note or Skill.
6. Promote candidates only when the evidence is stable and reusable.
7. Convert a process into a local Skill only when it has clear triggers, inputs, workflow, outputs, and limits.
8. Move stale or superseded items to `memory/archive/`.
9. Update `memory/index.md`, `skills/index.md`, and `memory/digest.md` when their routing surface changes.

## Promotion Rules

- Keep one-off facts in logs.
- Keep unreviewed reusable observations in candidates.
- Promote stable reusable knowledge to `memory/notes/`.
- Promote repeatable procedures to `storage/skills/<skill-id>/SKILL.md`.
- Promote reusable references, examples, or assets to `storage/library/`.
- Preserve source batch links for imported memories and Skills.
- Never promote private data into public framework paths.

## Local Skill Requirements

A local Skill is not complete until it has:

- A lowercase hyphenated folder name.
- `SKILL.md` with `name` and `description` frontmatter.
- Trigger conditions in the description.
- Inputs and outputs.
- A bounded workflow.
- Safety or non-use rules.
- An entry in `storage/skills/index.md`.

## Output

Return a short curation report listing merged items, promoted notes, created or changed local Skills, archived items, updated indexes, and any items rejected from promotion.

## Quality Checks

- Every promoted item has a trigger and scope.
- Every created Skill has a matching index entry.
- Replaced material is archived or linked from the new canonical item.
- Imported material still links back to its source batch or import report.
- The curation does not broaden private material into public framework content.