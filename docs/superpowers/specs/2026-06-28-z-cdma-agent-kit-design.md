# z-cdma Agent Kit 设计

## 目标

将 z-cdma 的记忆框架升级为可被本地 Agent 日常直接使用的能力包。公共仓库发布的是接入、路由、导入、沉淀和管理能力；用户的个人记忆、业务项目和私有 Skill 保留在本地 `storage/`。

## 非目标

- 不把用户记忆、项目内容、平台策略或私有资产发布到仓库。
- 不让公共框架直接决定业务内容产出。
- 不长期维护旧的本地目录结构作为推荐形态。
- 不在日常入口 Skill 中塞入备份、恢复等低频管理职责。
- 不把外部旧材料当成简单目录搬运问题。

## 核心架构

公共层包含协议、模板、公共 Skill 和插件包：

- `protocols/`：通用协议。
- `templates/`：可复制模板。
- `skills/common/`：框架通用 Skill。
- `plugins/z-cdma-agent-kit/`：面向插件市场发布的基础插件包。

本地层统一使用 `storage/`：

```text
storage/
  README.md
  config.md
  inbox/
  memory/
  skills/
  work/
  library/
  backup/
```

`storage/` 是唯一推荐的个人数据资产根目录。`inbox/` 只用于外部材料导入批次的暂存和审计。旧的 `domains/`、`skills_local/`、`knowledge/`、`content_projects/`、`assets_index/`、`publishing_local/`、`outputs/`、`renders/` 和 `tmp/` 只作为兼容迁移来源继续保持私有。

## 插件包

插件名：`z-cdma-agent-kit`

插件职责：

- 帮助本地 Agent 定位并读取 `storage/`。
- 将用户任务路由到必要记忆和本地 Skill。
- 支持外部知识库、旧项目和过程材料首次导入。
- 支持记忆沉淀、合并、归档和 Skill 化。
- 支持初始化、设备迁移、备份、恢复和结构校验。

插件不携带用户数据。插件里的模板只定义空结构和使用说明。

## 四个基础 Skill

### z-cdma-start

日常入口。用于任何需要本地上下文、记忆、项目连续性或本地 Skill 的任务。

工作流：

1. 定位 `storage/`。
2. 读取 `storage/README.md` 和 `storage/memory/digest.md`。
3. 根据任务查 `storage/memory/index.md` 和 `storage/skills/index.md`。
4. 只加载命中的记忆、项目和 Skill。
5. 完成任务后判断是否写入 `memory/log/` 或 `memory/candidates/`。

### z-cdma-import

外部材料首次导入入口。用于把其他工具、自建目录、旧知识库、已有作品或过程资料转为可继续工作的 `storage/` 资产。

工作流：

1. 在 `storage/inbox/imports/<batch-id>/` 建立来源清单。
2. 分类材料：项目、来源、经验候选、Skill 候选、归档或拒绝。
3. 先写导入计划，默认 dry-run。
4. 执行 copy、reference 或 summary 导入，不删除来源。
5. 将项目重建到 `work/`，来源登记到 `library/sources/`，经验写入 `memory/candidates/`。
6. 写入导入报告，交给 `z-cdma-start` 或 `z-cdma-curate` 继续。

### z-cdma-curate

沉淀和瘦身入口。用于复盘、整理、记忆膨胀、Skill 重复、用户要求总结方法的场景。

工作流：

1. 审查 `memory/log/`、`memory/candidates/`、`memory/notes/`、导入报告和 `skills/`。
2. 合并重复或冲突记忆。
3. 将稳定候选沉淀到 `memory/notes/`。
4. 将可重复执行的流程沉淀为 `storage/skills/<skill-id>/SKILL.md`。
5. 更新 `memory/index.md` 和 `skills/index.md`。
6. 将过期内容移入 `memory/archive/`。

### z-cdma-admin

低频管理入口。用于初始化、设备迁移、备份、恢复和结构校验。

工作流：

1. 初始化或检查 `storage/`。
2. 规划 z-cdma storage 迁移或旧版 z-cdma 本地目录迁移。
3. 导出备份包。
4. dry-run 恢复备份。
5. 校验公共/私有边界。

## 索引约束

记忆和 Skill 的可用性依赖索引，而不是依赖 Agent 猜测。

每条记忆索引必须包含：

- 触发场景。
- 读取文件。
- 适用范围。
- 不适用场景。

每个本地 Skill 索引必须包含：

- 触发场景。
- 入口文件。
- 输入。
- 输出。
- 适用范围。

没有触发条件的记忆只能保留在 `log/` 或 `candidates/`，不能沉淀为长期 `notes/`。没有清晰输入输出边界的流程不能沉淀为 Skill。

## 日常链路

```text
用户任务
  -> z-cdma-start
  -> storage/README.md
  -> memory/digest.md
  -> memory/index.md / skills/index.md
  -> 必要记忆、项目或本地 Skill
  -> 完成任务
  -> 写回 log 或 candidates
```

## 导入链路

```text
外部既有材料
  -> z-cdma-import
  -> inbox/imports/<batch-id>/
  -> work / library/sources / memory/candidates
  -> z-cdma-start 或 z-cdma-curate
```

## 沉淀链路

```text
复盘或整理请求
  -> z-cdma-curate
  -> log / candidates / notes / skills / import reports
  -> 合并、沉淀、归档
  -> 更新索引
```

## 管理链路

```text
初始化、设备迁移、备份或恢复
  -> z-cdma-admin
  -> storage 结构、备份包、恢复计划
```

## 错误处理

- 找不到 `storage/` 时，`z-cdma-start` 应提示使用 `z-cdma-admin` 初始化，不能自行创建含业务假设的内容。
- 外部既有材料导入请求应转给 `z-cdma-import`，不能用旧目录映射机械搬运。
- 索引缺失时，读取 `digest.md` 后继续执行当前任务，并建议补建索引。
- 命中多个记忆或 Skill 时，选择最窄范围；范围冲突时向用户说明冲突并优先不写入长期记忆。
- 备份恢复默认 dry-run；覆盖现有数据前必须得到用户确认。

## 验证

- 插件 manifest 必须通过 plugin validator。
- 新 Skill 必须通过 skill validator。
- 公共边界校验必须确认 `storage/` 和旧本地目录没有被 Git 跟踪。
- 仓库文档必须将 `storage/` 标为私有数据根。