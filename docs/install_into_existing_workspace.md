# 安装到已有工作区

当你已有私有内容工作区，并希望加入公共 `z-cdma` 框架且不覆盖本地材料时，使用本指南。

## 复制公共框架文件

只将公共框架资产复制到已有工作区：

- `protocols/`
- `templates/`
- `skills/common/`
- `plugins/`
- `optional_modules/`
- `examples/public_minimal_project/`
- `tools/`
- `docs/`
- `PUBLIC_MANIFEST.md` 中列出的公共根文件，前提是你希望该工作区也像框架检出目录一样使用

不要覆盖本地内容、本地域、私有技能、知识库、媒体索引、发布记录、输出或渲染文件。如果目标路径已存在，先比较差异，再有意识地合并。

## 添加本地忽略规则

确保工作区 `.gitignore` 包含以下仅限本地的路径：

```gitignore
/storage/
domains/
skills_local/
knowledge/
content_projects/
assets_index/
publishing_local/
outputs/
renders/
tmp/
```

这些规则会让私有内容和生产产物留在公共框架仓库之外。

## 创建本地数据根

推荐创建新的本地数据根：

```powershell
Copy-Item -Recurse templates/storage storage
```

旧的 `domains/`、`skills_local/`、`knowledge/`、`content_projects/`、`assets_index/`、`publishing_local/`、`outputs/`、`renders/` 和 `tmp/` 仍应保持私有。安装后，优先把新项目放在 `storage/work/`。

## 处理已有材料

如果这些材料本来就是 z-cdma 旧版本或另一台设备上的 `storage/` 资产，用 `z-cdma-admin` 规划设备迁移、备份或恢复。

如果这些材料来自其他工具、自建目录、旧知识库、历史作品或过程项目资料，用 `z-cdma-import`。它会先建立来源清单和导入计划，再把项目上下文、来源资料和经验候选分别落到 `storage/work/`、`storage/library/sources/` 和 `storage/memory/candidates/`。