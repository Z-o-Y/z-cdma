# z-cdma Agent Kit Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a market-ready z-cdma Agent Kit plugin, simple `storage/` templates, and public/private boundary updates.

**Architecture:** Keep framework code public and personal data private. Publish three plugin Skills for daily start, memory curation, and storage administration while using `templates/storage/` as the canonical empty local data template.

**Tech Stack:** Markdown protocols and Skills, Codex plugin manifest JSON, PowerShell boundary validation.

---

### Task 1: Design Spec

**Files:**
- Create: `docs/superpowers/specs/2026-06-28-z-cdma-agent-kit-design.md`

- [ ] **Step 1: Write the design spec**

Create the design document with goals, non-goals, architecture, three Skill responsibilities, storage layout, error handling, and validation rules.

- [ ] **Step 2: Review for placeholders**

Search for `TBD`, `TODO`, vague ownership, or contradictory directory guidance. Expected: no placeholder text remains.

### Task 2: Plugin Scaffold

**Files:**
- Create: `plugins/z-cdma-agent-kit/.codex-plugin/plugin.json`
- Create: `plugins/z-cdma-agent-kit/skills/z-cdma-start/SKILL.md`
- Create: `plugins/z-cdma-agent-kit/skills/z-cdma-curate/SKILL.md`
- Create: `plugins/z-cdma-agent-kit/skills/z-cdma-admin/SKILL.md`

- [ ] **Step 1: Scaffold plugin**

Run:

```powershell
python C:\Users\zhaoy\.codex\skills\.system\plugin-creator\scripts\create_basic_plugin.py z-cdma-agent-kit --path plugins --with-skills
```

Expected: plugin directory with `.codex-plugin/plugin.json` and `skills/`.

- [ ] **Step 2: Create the three Skill folders**

Run `init_skill.py` for `z-cdma-start`, `z-cdma-curate`, and `z-cdma-admin` under `plugins/z-cdma-agent-kit/skills`.

- [ ] **Step 3: Replace generated Skill templates**

Each `SKILL.md` must have concise frontmatter, clear trigger descriptions, a bounded workflow, writeback rules, and quality checks.

- [ ] **Step 4: Validate plugin and Skills**

Run:

```powershell
python C:\Users\zhaoy\.codex\skills\.system\skill-creator\scripts\quick_validate.py plugins\z-cdma-agent-kit\skills\z-cdma-start
python C:\Users\zhaoy\.codex\skills\.system\skill-creator\scripts\quick_validate.py plugins\z-cdma-agent-kit\skills\z-cdma-curate
python C:\Users\zhaoy\.codex\skills\.system\skill-creator\scripts\quick_validate.py plugins\z-cdma-agent-kit\skills\z-cdma-admin
python C:\Users\zhaoy\.codex\skills\.system\plugin-creator\scripts\validate_plugin.py plugins\z-cdma-agent-kit
```

Expected: all validators pass.

### Task 3: Storage Templates

**Files:**
- Create: `templates/storage/README.md`
- Create: `templates/storage/config.md`
- Create: `templates/storage/memory/digest.md`
- Create: `templates/storage/memory/index.md`
- Create: `templates/storage/skills/index.md`
- Create: `templates/storage/work/README.md`
- Create: `templates/storage/library/README.md`
- Create: `templates/storage/backup/README.md`

- [ ] **Step 1: Add templates**

Create short, empty, user-facing templates that define where local agents start and how index triggers work.

- [ ] **Step 2: Check clarity**

Confirm the top-level template only exposes `memory`, `skills`, `work`, `library`, and `backup` as primary directories.

### Task 4: Boundary Updates

**Files:**
- Modify: `.gitignore`
- Modify: `PUBLIC_MANIFEST.md`
- Modify: `framework_manifest.md`
- Modify: `README.md`
- Modify: `docs/getting_started.md`
- Modify: `docs/install_into_existing_workspace.md`
- Modify: `docs/upgrade_guide.md`
- Modify: `docs/extension_guide.md`
- Modify: `tools/validate-public-boundary.ps1`

- [ ] **Step 1: Mark `storage/` private**

Add `storage/` to `.gitignore`, local/private docs, and validator private path list.

- [ ] **Step 2: Mark plugin package public**

Add `plugins/` to the public manifest, framework docs, and validator required public paths.

- [ ] **Step 3: Keep legacy local paths private**

Keep old local paths in `.gitignore` and validation as migration sources, but document `storage/` as the recommended root.

### Task 5: Verification

**Files:**
- Validate all changed files.

- [ ] **Step 1: Run public boundary validation**

Run:

```powershell
.\tools\validate-public-boundary.ps1
```

Expected: passes.

- [ ] **Step 2: Check Git status**

Run:

```powershell
git status --short
```

Expected: only intentional public framework files are changed or added.
