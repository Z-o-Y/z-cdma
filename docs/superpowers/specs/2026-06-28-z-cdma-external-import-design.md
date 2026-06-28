# z-cdma 外部工作导入设计

## 目标

为首次采用 z-cdma 的用户提供一条清晰导入路径：把其他工具、自建目录或历史项目中的成果和过程资料，转成可由本地 Agent 继续使用的 `storage/` 资产。

## 非目标

- 不处理设备切换、备份恢复或 storage 版本迁移；这些仍由 `z-cdma-admin` 负责。
- 不把旧目录形状原样复制成新的推荐结构。
- 不把未经审查的外部资料直接提升为长期记忆、Skill 或公共框架内容。
- 不默认复制大文件、媒体、凭据、账号导出或受许可限制的材料。

## 核心区分

| 类型 | 含义 | 入口 |
| --- | --- | --- |
| 设备迁移 | 已经在 z-cdma 下生产的 `storage/` 数据，需要跨设备备份、恢复或迁移 | `z-cdma-admin` |
| 外部导入 | z-cdma 之外形成的知识库、笔记、作品、项目资料首次进入框架 | `z-cdma-import` |

## 存储模型

在现有简单结构上只新增一个暂存入口：

```text
storage/
  inbox/
  memory/
  skills/
  work/
  library/
  backup/
```

`inbox/` 用于导入批次的来源清单、导入计划和导入报告。导入完成后，长期资产必须落到 `work/`、`library/`、`memory/` 或 `skills/`。

## 两个主要场景

### 知识库迁移为经验库

外部知识库先保留为来源，再抽取经验候选：

```text
外部知识库
  -> inbox/imports/<batch-id>/
  -> library/sources/
  -> memory/candidates/
  -> z-cdma-curate
  -> memory/notes/ 或 skills/
```

### 作品或过程材料迁移为本地项目

旧项目和过程资料要重建为可继续工作的项目：

```text
外部项目
  -> inbox/imports/<batch-id>/
  -> work/<project-id>/
      README.md
      status.md
      import_log.md
      memory/digest.md
      materials/
      outputs/
      references/
```

## Skill 责任

- `z-cdma-import`：首次导入外部工作，建立来源清单、计划、导入报告、项目上下文和经验候选。
- `z-cdma-start`：导入完成后的日常任务入口，只读取已整理的项目、记忆和 Skill。
- `z-cdma-curate`：审查导入产生的候选，合并、沉淀、Skill 化或归档。
- `z-cdma-admin`：设备迁移、初始化、备份、恢复和结构检查。

## 验证标准

- 新 Skill 通过 skill validator。
- 插件 manifest 通过 plugin validator。
- `templates/storage/` 的主目录仍保持简单可辨识。
- 文档明确区分设备迁移和外部导入。
- 公共/私有边界校验通过。