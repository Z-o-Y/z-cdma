# GitHub 发布指南

将公开的 `z-cdma` 框架推送到 GitHub 前，请使用这份检查清单。

## 校验边界

运行边界校验工具：

```powershell
.\tools\validate-public-boundary.ps1
```

发布前，修复所有被报告的已跟踪私有路径或不允许发布的文件。

## 检查 Git 状态

检查待提交变更：

```powershell
git status --short
```

检查已跟踪文件：

```powershell
git ls-files
```

只有 `PUBLIC_MANIFEST.md` 中列出的公共框架文件才应被跟踪并推送。

## 确认没有跟踪私有内容

推送前，确认 Git 未跟踪：

- 私有内容项目
- 本地域
- `skills_local/` 下的私有技能
- 私有知识库
- 凭据或账号密钥
- 媒体文件、剪辑工程文件、渲染文件或输出文件
- `assets_index/`
- `publishing_local/`

如果 `git status --short` 或 `git ls-files` 显示私有内容、凭据、媒体文件、本地域或内容项目，不要推送。

## 仅推送公共框架文件

完成校验和审查后，只提交并推送公共框架文件。如果同一个目录也作为本地工作区使用，每次发布都应视为一次边界检查：仓库应只包含框架，而不是你的私有生产流程或未发布内容。
