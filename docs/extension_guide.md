# 扩展指南

扩展允许本地工作区加入私有领域知识和任务专用技能，而不改动公共框架。

## 添加本地域

在 `domains/<domain-id>/` 下创建本地域包：

```powershell
New-Item -ItemType Directory -Force domains/my-domain
```

领域包可以包含私有参考资料、风格规则、受众假设、发布约束、示例或领域专用工作流。领域 ID 应保持稳定且具有描述性。

领域包默认是私有的。它们会被 Git 忽略，除非你明确将其中一部分转化为通用框架贡献，否则不应发布。

## 添加本地技能

可在以下两个位置之一创建私有技能：

- `skills_local/`：工作区级私有技能。
- `domains/<domain-id>/skills/`：仅在某个领域内有意义的技能。

创建新技能时，可从 `templates/skill/` 开始：

```powershell
New-Item -ItemType Directory -Force skills_local
Copy-Item -Recurse templates/skill skills_local/my-skill
```

本地技能默认应保持私有，尤其当它们包含私有示例、账号上下文、未发布策略、专有提示词或本地资产引用时。

## 谨慎提升为公共内容

只有当扩展足够通用、可跨工作区复用、不含私有内容，并且通过公共/私有边界审查后，才应提升为公共框架内容。

提升前，移除私有示例、凭据、媒体引用、项目名、未发布研究和账号级发布逻辑。公共通用技能通常放在 `skills/common/` 下；公共模板通常放在 `templates/` 下。
