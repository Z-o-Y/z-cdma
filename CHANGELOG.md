# 变更日志

## Unreleased

- 新增 `plugins/z-cdma-agent-kit/`，提供 `z-cdma-start`、`z-cdma-curate` 和 `z-cdma-admin` 三个基础 Skill。
- 新增 `templates/storage/`，将本地记忆、私有 Skill、工作项目、资料库和备份统一到一个私有数据根。
- 更新公共/私有边界文档和校验工具，将 `plugins/` 作为公共资产，将 `storage/` 作为私有资产。
- 更新记忆提升协议，将新沉淀目标迁移到 `storage/`，旧本地目录仅作为兼容迁移来源。

## 0.1.0 - 2026-06-13

- 初始化公共框架骨架。
- 添加公共/私有边界模型。
- 添加内容创作阶段模型。
- 添加 Agent 记忆与上下文路由设计。
