# Asset Policy Protocol

## Purpose

Keep heavy media, source assets, render outputs, and editing projects manageable while preserving enough metadata for reuse and audit.

## Storage Rules

- Keep heavy files external to the public framework repository.
- Store index paths only when assets are too large, private, licensed, or local-only.
- Index reusable assets with stable identifiers, location, description, usage scope, and status.
- Record render paths for final exports, previews, thumbnails, subtitles, and production packages.
- Record license, source, and scope for every reusable external asset.

## Public Boundary

- Video, audio, and editing projects are not public GitHub content.
- Local raw footage, voice files, project files, renders, platform uploads, and private asset libraries stay in local workspace paths or external storage.
- Public framework files may describe generic asset conventions but must not include private content, heavy binaries, or local-only production material.

## Reuse Rules

- Reuse only assets whose license, source, and scope permit the intended use.
- Prefer indexed reusable assets over rediscovering or duplicating files.
- If an asset path moves, update the index rather than embedding stale paths in multiple documents.
