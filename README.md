# z-cdma

`z-cdma` 是一个面向 Agent 协作的通用自媒体内容创作框架。

项目主语言为中文（`zh-CN`）。公共框架材料、模板、协议和通用技能说明默认使用中文编写。

它提供一套可公开复用的框架资产，用于选题构思、资料整理、论证成型、脚本规划、分镜规划、生产包、发布准备、复盘、Agent 记忆和交接。

## 公共框架与本地工作区

同一个目录既可以作为公共框架仓库，也可以作为本地内容工作区。

公共框架路径以 `PUBLIC_MANIFEST.md` 为准。

本地个人数据资产默认放在 `storage/`，并会被 Git 忽略：

- storage/

旧版本地目录仍保持私有，仅作为兼容和迁移来源：

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
2. 使用 `templates/storage/` 初始化本地 `storage/`。
3. 安装或启用 `plugins/z-cdma-agent-kit/` 后，用 `z-cdma-start` 开始日常任务。
4. 如果已有外部知识库、旧笔记、旧项目或过程材料，先用 `z-cdma-import` 导入为可继续工作的本地资产。
5. 将真实生产内容保存在被忽略的 `storage/` 中。
6. 发布前运行 `tools/validate-public-boundary.ps1`。

## 两类迁移

- 设备迁移、备份、恢复和 z-cdma storage 版本调整：使用 `z-cdma-admin`。
- 首次采用 z-cdma 时导入其他工具或旧目录形成的材料：使用 `z-cdma-import`。

## 非目标

- 本仓库不发布具体内容项目。
- 本仓库不发布私有领域知识。
- 本仓库不保存视频、音频、剪辑工程、凭据或账号级平台策略。