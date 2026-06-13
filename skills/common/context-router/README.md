# context-router

Routes a content task to the correct context, stage, skill, and writeback path while keeping file reads and edits minimal.

Public/local boundary: public framework files are only changed when the task is explicitly framework work. Ordinary content tasks should stay in local project space and write only the relevant activity, memory, status, or handoff records.
