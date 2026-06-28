# 工作区

保存具体业务项目、内容项目、项目状态和过程产物。

建议按项目拆分：

```text
work/
  project-id/
    README.md
    status.md
    memory/
```

从外部旧项目或过程资料导入时，可以从 `work/imported_project/` 模板复制，再改成真实项目 ID。导入完成后，日常工作应通过 `z-cdma-start` 读取该项目的摘要、状态和必要材料。