# 安装到已有工作区

当你已有私有内容工作区，并希望加入公共 `z-cdma` 框架且不覆盖本地材料时，使用本指南。

## 复制公共框架文件

只将公共框架资产复制到已有工作区：

- `protocols/`
- `templates/`
- `skills/common/`
- `optional_modules/`
- `examples/public_minimal_project/`
- `tools/`
- `PUBLIC_MANIFEST.md` 中列出的公共根文件，前提是你希望该工作区也像框架检出目录一样使用

不要覆盖本地内容、本地域、私有技能、知识库、媒体索引、发布记录、输出或渲染文件。如果目标路径已存在，先比较差异，再有意识地合并。

## 添加本地忽略规则

确保工作区 `.gitignore` 包含以下仅限本地的路径：

```gitignore
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

## 创建本地专用目录

创建计划使用的本地目录：

```powershell
New-Item -ItemType Directory -Force domains, skills_local, knowledge, content_projects, assets_index, publishing_local, outputs, renders, tmp
```

安装后，从 `templates/content_project/` 在 `content_projects/` 下创建项目。将公共框架更新与本地生产工作分开，后续升级会更容易审查。
