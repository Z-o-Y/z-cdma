# 变更日志

## Unreleased

- 新增 `z-cdma-import` Skill，用于首次导入外部知识库、旧笔记、旧项目、作品和过程资料。
- 新增 `protocols/external_work_import.md`，明确区分设备迁移和外部工作导入。
- 新增 `templates/storage/inbox/`、导入批次模板、导入项目模板、来源资料模板和记忆候选模板。
- 新增 `plugins/z-cdma-agent-kit/`，提供 `z-cdma-start`、`z-cdma-import`、`z-cdma-curate` 和 `z-cdma-admin` 四个基础 Skill。
- 新增 `templates/storage/`，将本地记忆、私有 Skill、工作项目、资料库和备份统一到一个私有数据根。
- 更新公共/私有边界文档和校验工具，将 `plugins/` 作为公共资产，将 `storage/` 作为私有资产。
- 更新记忆提升协议，将新沉淀目标迁移到 `storage/`，旧本地目录仅作为兼容迁移来源。

## 0.1.0 - 2026-06-13

- 初始化公共框架骨架。
- 添加公共/私有边界模型。
- 添加内容创作阶段模型。
- 添加 Agent 记忆与上下文路由设计。