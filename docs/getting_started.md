# 快速上手

`z-cdma` 是一个面向 Agent 协作流程的通用自媒体内容创作框架。项目主语言为中文（`zh-CN`）。同一个目录可以同时承担两种角色：

- 公共框架仓库：包含可复用的协议、模板、通用技能、插件包、示例、工具和文档。
- 本地内容工作区：包含 `storage/` 下的私有记忆、本地技能、工作项目、资料库、导入记录、备份和生产输出。

以 `PUBLIC_MANIFEST.md` 作为边界依据。公共框架路径可以发布；仅限本地的路径会被 Git 忽略，并应保持私有。

## 创建本地 storage

首次使用时，先从模板创建本地数据根：

```powershell
Copy-Item -Recurse templates/storage storage
```

`storage/` 是唯一推荐的本地个人数据资产根目录。旧的 `domains/`、`skills_local/`、`knowledge/`、`content_projects/` 等目录仅作为兼容迁移来源。

## 导入已有工作

如果你第一次使用 z-cdma，但过去已经在其他工具、自建目录或旧项目中积累了知识库、笔记、草稿、作品或过程资料，先使用 `z-cdma-import`。

导入不是简单搬目录。推荐流程是：

1. 在 `storage/inbox/imports/<batch-id>/` 建立来源清单、导入计划和导入报告。
2. 把可继续的项目重建到 `storage/work/<project-id>/`。
3. 把可追溯来源登记到 `storage/library/sources/`。
4. 把可复用但未审查的经验写入 `storage/memory/candidates/`。
5. 后续用 `z-cdma-curate` 审查、合并、沉淀或 Skill 化。

设备切换、备份恢复和 z-cdma storage 迁移仍使用 `z-cdma-admin`。

## 创建本地项目

每个真实内容项目都应放在本地 `storage/work/` 下：

```powershell
New-Item -ItemType Directory -Force storage/work/my-project
```

将 `my-project` 替换为稳定的项目 ID。草稿、研究笔记、脚本、分镜、交接记录和复盘记录都应放在该项目文件夹内。

## 先路由上下文

开始内容工作前，优先使用 `plugins/z-cdma-agent-kit/` 中的 `z-cdma-start`。它会读取 `storage/README.md`、`memory/digest.md`、`memory/index.md` 和 `skills/index.md`，再决定加载哪个项目、记忆和本地 Skill。

首次导入外部材料使用 `z-cdma-import`。复盘、合并、沉淀和瘦身使用 `z-cdma-curate`。初始化、设备迁移、备份和恢复使用 `z-cdma-admin`。

## 保持项目私有

内容项目属于本地生产工作。不要将 `storage/` 加入 Git，也不要发布脚本、研究笔记、私有参考资料、平台策略、凭据或账号级材料。

框架包含视频工作流模板，包括生产包、分镜、镜头清单、剪辑检查表、渲染索引和发布模板。可用这些模板进行规划和交接，但大文件应放在外部存储、`storage/work/outputs/`、`storage/work/renders/` 等本地路径，或你的剪辑/存储系统中。