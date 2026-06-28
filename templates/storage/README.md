# 本地 storage 入口

此目录保存用户本地记忆、私有 Skill、工作项目、资料库和备份。它是个人数据资产目录，不应提交到公共框架仓库。

## Agent 启动顺序

1. 读取 `config.md`，确认本地约定。
2. 读取 `memory/digest.md`，获得当前摘要。
3. 根据任务查询 `memory/index.md`。
4. 根据任务查询 `skills/index.md`。
5. 只加载命中的记忆、项目或本地 Skill。

## 目录

- `memory/`：长期记忆、摘要、日志、候选和归档。
- `skills/`：用户本地沉淀的私有 Skill。
- `work/`：业务项目、内容项目和过程产物。
- `library/`：资料库、领域知识、资产索引和参考材料。
- `backup/`：备份包、恢复记录和迁移记录。
