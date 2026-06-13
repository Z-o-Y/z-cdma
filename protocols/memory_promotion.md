# Memory Promotion Protocol

## Purpose

Promote only reviewed knowledge that has durable value beyond the immediate task.

## Promotion Gate

- Promotion happens only after publishing review and human confirmation.
- Do not promote drafts, unverified assumptions, one-off preferences, or ordinary task notes.
- Promotion candidates may be collected earlier, but they remain candidates until reviewed.

## Destinations

- `knowledge/common`: reusable knowledge that is generic across domains and safe for the public or shared framework context.
- `domains/<domain-id>/knowledge`: confirmed local domain knowledge.
- `skills_local` or `domains/*/skills`: repeatable local methods, prompts, workflows, or production skills.
- `assets_index`: reusable assets, source files, render outputs, licenses, usage scope, and retrieval paths.
- `public framework candidate`: generic protocol, template, or skill improvements that may belong in public GitHub after review.

## Required Metadata

- `source`: where the knowledge came from, including task, artifact, review, metric, or human confirmation.
- `scope`: where the knowledge applies, such as framework, project, domain, platform, format, or audience.
- `risk`: privacy, license, accuracy, public suitability, operational sensitivity, and potential overgeneralization.

## Review Rules

- Prefer narrow local promotion over broad framework promotion when scope is uncertain.
- Keep rejected candidates in raw or review notes only when audit value remains.
- Do not promote private local content into public framework destinations.
