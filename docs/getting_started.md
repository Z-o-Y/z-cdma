# 快速上手

`z-cdma` 是一个面向 Agent 协作流程的通用自媒体内容创作框架。项目主语言为中文（`zh-CN`）。同一个目录可以同时承担两种角色：

- 公共框架仓库：包含可复用的协议、模板、通用技能、示例、工具和文档。
- 本地内容工作区：包含私有领域、项目草稿、媒体索引、输出、渲染文件和发布记录。

以 `PUBLIC_MANIFEST.md` 作为边界依据。公共框架路径可以发布；仅限本地的路径会被 Git 忽略，并应保持私有。

## 创建本地项目

每个真实内容项目都应基于公共项目模板创建在 `content_projects/` 下：

```powershell
New-Item -ItemType Directory -Force content_projects
Copy-Item -Recurse templates/content_project content_projects/my-project
```

将 `my-project` 替换为稳定的项目 ID。草稿、研究笔记、脚本、分镜、交接记录和复盘记录都应放在该项目文件夹内。

## 先路由上下文

开始内容工作前，先使用 `skills/common/context-router/`。路由器会帮助判断任务开始前应加载哪个项目、领域上下文、记忆和工作流阶段。

当同一个工作区包含多个本地项目或私有领域包时，这一点尤其重要。

## 保持项目私有

内容项目属于本地生产工作。不要将 `content_projects/` 加入 Git，也不要发布脚本、研究笔记、私有参考资料、平台策略、凭据或账号级材料。

框架包含视频工作流模板，包括生产包、分镜、镜头清单、剪辑检查表、渲染索引和发布模板。可用这些模板进行规划和交接，但大文件应放在外部存储、`outputs/`、`renders/` 等被忽略的本地路径，或你的剪辑/存储系统中。
