# z-cdma

`z-cdma` 是一个面向 Agent 协作的通用自媒体内容创作框架。

项目主语言为中文（`zh-CN`）。公共框架材料、模板、协议和通用技能说明默认使用中文编写。

它提供一套可公开复用的框架资产，用于选题构思、资料整理、论证成型、脚本规划、分镜规划、生产包、发布准备、复盘、Agent 记忆和交接。

## 公共框架与本地工作区

同一个目录既可以作为公共框架仓库，也可以作为本地内容工作区。

公共框架路径以 `PUBLIC_MANIFEST.md` 为准。

本地域能力和内容项目会被 Git 忽略：

- domains/
- skills_local/
- knowledge/
- content_projects/
- assets_index/
- publishing_local/
- outputs/
- renders/
- tmp/

## 快速开始

1. 克隆或复制本仓库。
2. 使用 `templates/content_project/` 在 `content_projects/` 下创建本地项目。
3. 开始内容任务前，先使用 `skills/common/context-router/` 选择上下文。
4. 将真实生产内容保存在被忽略的本地目录中。
5. 发布前运行 `tools/validate-public-boundary.ps1`。

## 非目标

- 本仓库不发布具体内容项目。
- 本仓库不发布私有领域知识。
- 本仓库不保存视频、音频、剪辑工程、凭据或账号级平台策略。
