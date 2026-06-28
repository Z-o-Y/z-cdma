# z-cdma External Import Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans or superpowers:subagent-driven-development when continuing this plan. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a first-time external work import flow that converts prior knowledge bases, notes, works, and process materials into usable z-cdma `storage/` assets.

**Architecture:** Keep device migration in `z-cdma-admin`. Add `z-cdma-import` for external onboarding. Add only one new top-level storage folder, `inbox/`, as a temporary audit area.

---

### Task 1: Import Skill

**Files:**
- Create: `plugins/z-cdma-agent-kit/skills/z-cdma-import/SKILL.md`
- Create: `plugins/z-cdma-agent-kit/skills/z-cdma-import/agents/openai.yaml`
- Modify: `plugins/z-cdma-agent-kit/.codex-plugin/plugin.json`

- [ ] Define external import triggers and explicitly exclude device migration.
- [ ] Document inventory, classification, planning, execution, project reconstruction, and candidate extraction.
- [ ] Add the skill to plugin-facing prompts and descriptions.

### Task 2: Protocol and Templates

**Files:**
- Create: `protocols/external_work_import.md`
- Create: `templates/storage/inbox/`
- Create: `templates/storage/work/imported_project/`
- Create: `templates/storage/library/sources/`
- Create: `templates/storage/memory/candidates/`

- [ ] Add source manifest, import plan, and import report templates.
- [ ] Add imported project templates for resumable work.
- [ ] Add candidate templates for knowledge-base-to-experience extraction.

### Task 3: Routing Updates

**Files:**
- Modify: `plugins/z-cdma-agent-kit/skills/z-cdma-start/SKILL.md`
- Modify: `plugins/z-cdma-agent-kit/skills/z-cdma-curate/SKILL.md`
- Modify: `plugins/z-cdma-agent-kit/skills/z-cdma-admin/SKILL.md`
- Modify: `templates/storage/README.md`
- Modify: `templates/storage/config.md`

- [ ] Route external onboarding requests to `z-cdma-import`.
- [ ] Route device migration and backups to `z-cdma-admin`.
- [ ] Route imported candidates to `z-cdma-curate`.

### Task 4: Documentation

**Files:**
- Modify: `README.md`
- Modify: `docs/getting_started.md`
- Modify: `docs/install_into_existing_workspace.md`
- Modify: `docs/upgrade_guide.md`
- Modify: `docs/extension_guide.md`
- Modify: `CHANGELOG.md`

- [ ] Explain the two migration meanings.
- [ ] Add first-time import guidance.
- [ ] Keep `storage/` private and public framework boundaries unchanged.

### Task 5: Verification

- [ ] Validate all four plugin Skills.
- [ ] Validate the plugin manifest.
- [ ] Run public/private boundary validation.
- [ ] Check Git status and commit intentional changes.