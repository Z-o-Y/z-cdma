# 升级指南

当你要把新版 `z-cdma` 框架引入可能包含私有内容的工作区时，使用本指南。

## 审查版本

先阅读 `CHANGELOG.md`。记录会影响你工作流的协议、模板、通用技能、插件包、工具或公共清单变更。

## 比较公共清单

复制任何内容前，先比较旧版与新版 `PUBLIC_MANIFEST.md`。将清单视为公共框架文件与私有本地工作区文件之间的边界。

只更新公共框架文件。典型公共路径包括：

- `protocols/`
- `templates/`
- `skills/common/`
- `plugins/`
- `optional_modules/`
- `examples/public_minimal_project/`
- `tools/`
- `docs/`
- `PUBLIC_MANIFEST.md` 中列出的公共根文件

## 保留本地工作

不要覆盖以下仅限本地的路径：

- `storage/`
- `domains/`
- `skills_local/`
- `knowledge/`
- `content_projects/`
- `assets_index/`
- `publishing_local/`

同时保留 `outputs/`、`renders/` 和 `tmp/` 等本地生产输出。

如果本地工作区定制过公共模板或协议，先比较文件，再决定保留本地版本、采用框架版本，或将本地定制拆分到 `storage/library/` 或 `storage/skills/`。旧的 `domains/` 和 `skills_local/` 只作为兼容迁移来源。

## 升级后校验

更新公共框架文件后，重新运行校验：

```powershell
.\tools\validate-public-boundary.ps1
```

然后检查 Git 状态，确认只有预期的公共框架文件发生变化。
