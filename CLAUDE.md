# Personal Assistant Starter

@AGENTS.md

This repo uses a shared-core architecture with Claude as one optional runtime.

## Read First

1. `README.md`
2. `.claude/README.md`
3. `.claude/context/CLAUDE.md`
4. Relevant files inside `.ai/`

## Canonical Core

The shared truth lives in `.ai/`:

- memory
- session logs
- playbooks
- skills

Claude-specific logic belongs in `.claude/`.

## Setup Rule

If the user asks Claude to personalize the system:

1. read `.ai/playbooks/setup.md`
2. use `.ai/skills/assistant-onboarding/SKILL.md`
3. write shared information to `.ai/` first
4. only then update Claude-specific files if needed

## Memory Rule

Before substantial work, check:

- `.claude/context/memory/user_preferences.md`
- `.claude/context/memory/user_projects.md`
- `.claude/context/memory/learnings.md`
- `.claude/context/memory/work_status.md`

After meaningful work:

- update shared memory in `.ai/memory/`
- update runtime status in `.ai/memory/runtime/claude-work-status.md`
- write a shared session log in `.ai/session-logs/` with `tool: claude`
