# 外部工作导入协议

## 目的

把 z-cdma 之外形成的既有成果、过程资料、知识库和项目文件，导入为可继续工作的本地 `storage/` 资产。

这不是设备切换迁移。设备切换迁移处理的是已经在 z-cdma 框架下生产的 `storage/` 资产和备份恢复；外部工作导入处理的是首次采用 z-cdma 时，如何吸收过去在其他工具或自建目录中形成的材料。

## 两类迁移边界

| 场景 | 使用 Skill | 目标 |
| --- | --- | --- |
| z-cdma 设备迁移、备份、恢复、storage 版本调整 | `z-cdma-admin` | 保持已有 z-cdma 数据资产完整可用 |
| 外部知识库、旧笔记、旧项目、作品过程材料首次进入 z-cdma | `z-cdma-import` | 重建可继续工作的项目上下文，并抽取经验候选 |

## 导入入口

外部材料先进入：

```text
storage/inbox/imports/<batch-id>/
```

每个批次至少包含：

- `source_manifest.md`：来源清单。
- `import_plan.md`：导入计划。
- `import_report.md`：执行结果和遗留问题。

`inbox/` 只是暂存和审计入口。导入完成后，日常工作应转到 `work/`、`library/`、`memory/` 或 `skills/`。

## 导入流程

1. 盘点来源：记录来源路径、工具、格式、规模、敏感性和保留价值。
2. 分类材料：项目、资料源、经验候选、Skill 候选、归档、拒绝导入。
3. 制定计划：明确 copy、reference、summary 或 reject，默认 dry-run。
4. 执行导入：复制或引用材料，不删除来源，不覆盖目标。
5. 重建上下文：为可继续项目创建 `storage/work/<project-id>/`。
6. 抽取经验：把可复用但未审查的经验写入 `storage/memory/candidates/`。
7. 更新索引：只把未来需要被 Agent 命中的项目、来源和候选写入索引。
8. 输出报告：记录成功、跳过、风险、冲突和下一步。

## 场景一：知识库迁移为经验库

不要把旧知识库等量搬成长期记忆。推荐路径：

```text
外部知识库
  -> storage/inbox/imports/<batch-id>/
  -> storage/library/sources/
  -> storage/memory/candidates/
  -> z-cdma-curate
  -> storage/memory/notes/ 或 storage/skills/
```

导入时只沉淀候选，后续由 `z-cdma-curate` 审查、合并、拒绝或提升。

## 场景二：已有作品或过程材料迁移到本地项目

推荐路径：

```text
外部作品或过程资料
  -> storage/inbox/imports/<batch-id>/
  -> storage/work/<project-id>/
      README.md
      status.md
      import_log.md
      memory/digest.md
      materials/
      outputs/
      references/
```

导入目标不是保持旧文件夹形状，而是让 Agent 能理解项目现状、可信材料、当前阶段和下一步。

## 质量要求

- 每个导入目标都能追溯到来源批次。
- 每个项目都有当前状态和下一步。
- 每个经验候选都有触发场景、适用范围和证据。
- 大文件、媒体、凭据和账号导出默认不复制。
- 未经审查的外部材料不得直接进入公共框架。