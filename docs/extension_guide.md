# 扩展指南

扩展允许本地工作区加入私有领域知识和任务专用技能，而不改动公共框架。

## 推荐本地扩展位置

新的本地扩展应放在 `storage/`：

- `storage/library/`：私有领域知识、资料库、资产索引和参考材料。
- `storage/skills/`：工作区级私有 Skill。
- `storage/work/`：具体项目和生产过程。

## 兼容旧本地域

旧工作区可能在 `domains/<domain-id>/` 下保存本地域包：

```powershell
New-Item -ItemType Directory -Force domains/my-domain
```

领域包可以包含私有参考资料、风格规则、受众假设、发布约束、示例或领域专用工作流。领域 ID 应保持稳定且具有描述性。

领域包默认是私有的。新项目优先放入 `storage/library/`；旧目录会继续被 Git 忽略，除非你明确将其中一部分转化为通用框架贡献，否则不应发布。

## 添加本地技能

新私有技能推荐创建在：

- `storage/skills/`：工作区级私有技能。

创建新技能时，可从 `templates/skill/` 开始：

```powershell
New-Item -ItemType Directory -Force storage/skills
Copy-Item -Recurse templates/skill storage/skills/my-skill
```

本地技能默认应保持私有，尤其当它们包含私有示例、账号上下文、未发布策略、专有提示词或本地资产引用时。

## 谨慎提升为公共内容

只有当扩展足够通用、可跨工作区复用、不含私有内容，并且通过公共/私有边界审查后，才应提升为公共框架内容。

提升前，移除私有示例、凭据、媒体引用、项目名、未发布研究和账号级发布逻辑。公共通用技能通常放在 `skills/common/` 下；公共模板通常放在 `templates/` 下；市场化入口插件放在 `plugins/` 下。
