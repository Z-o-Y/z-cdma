# 本地 storage 入口

此目录保存用户本地记忆、私有 Skill、工作项目、资料库、导入记录和备份。它是个人数据资产目录，不应提交到公共框架仓库。

## Agent 启动顺序

1. 读取 `config.md`，确认本地约定。
2. 如果任务是导入外部既有材料，使用 `z-cdma-import`。
3. 读取 `memory/digest.md`，获得当前摘要。
4. 根据任务查询 `memory/index.md`。
5. 根据任务查询 `skills/index.md`。
6. 只加载命中的记忆、项目、本地 Skill 或已完成导入报告。

## 目录

- `inbox/`：外部材料导入的暂存、计划和报告。
- `memory/`：长期记忆、摘要、日志、候选和归档。
- `skills/`：用户本地沉淀的私有 Skill。
- `work/`：业务项目、内容项目和过程产物。
- `library/`：资料库、领域知识、资产索引和参考材料。
- `backup/`：备份包、恢复记录和迁移记录。

`inbox/` 不作为长期工作目录。导入完成后，继续工作应回到 `work/`、`library/`、`memory/` 或 `skills/`。