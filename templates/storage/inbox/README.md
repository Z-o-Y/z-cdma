# 导入暂存区

`inbox/` 保存外部材料进入 z-cdma 前后的批次记录。它用于盘点、计划、审计和导入报告，不是长期工作目录。

## 使用方式

```text
inbox/
  imports/
    <batch-id>/
      source_manifest.md
      import_plan.md
      import_report.md
```

导入完成后：

- 可继续项目进入 `work/<project-id>/`。
- 参考资料进入 `library/sources/`。
- 可复用经验进入 `memory/candidates/`。
- 可重复流程经过审查后才进入 `skills/`。

不要直接在 `inbox/` 中开展长期项目工作。