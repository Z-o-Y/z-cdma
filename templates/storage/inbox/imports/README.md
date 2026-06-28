# 导入批次

每个导入批次使用稳定 ID，例如 `2026-06-28-old-notes`。

推荐结构：

```text
<batch-id>/
  source_manifest.md
  import_plan.md
  import_report.md
  raw/        # 可选，仅在用户确认复制原始材料时创建
  mapped/     # 可选，用于临时整理映射结果
```

默认先写清单和计划，再执行复制、引用或摘要导入。