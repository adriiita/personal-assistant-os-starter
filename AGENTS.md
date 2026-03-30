# Personal Assistant Starter

This repo is a portable starter for an AI executive assistant.

## Read First

1. `README.md`
2. `.codex/README.md`
3. `.codex/context/AGENTS.md`
4. Relevant files inside `.ai/`

## Core Rule

Treat `.ai/` as the canonical source of truth.

Use runtime folders only as adapters:

- `.claude/` for Claude-specific behavior
- `.codex/` for Codex-specific behavior

## Intended Behavior

This repo should not stay generic for long.
After onboarding, the agent should personalize it around the user's real life and work.

## Onboarding Rule

When the user asks to set up or personalize the system:

1. read `.ai/playbooks/setup.md`
2. use `.ai/skills/assistant-onboarding/SKILL.md`
3. ask only the highest-signal questions
4. create only the folders and workflows that match the user

## Memory Rule

Before substantial work, check:

- `.ai/memory/user_preferences.md`
- `.ai/memory/user_projects.md`
- `.ai/memory/learnings.md`
- `.ai/memory/runtime/codex-work-status.md`

After meaningful work:

- update shared memory in `.ai/memory/`
- update runtime status in `.ai/memory/runtime/codex-work-status.md`
- write a shared session log in `.ai/session-logs/`

## Design Rule

Do not turn this repo into productivity theater.

Prefer:

- fewer folders
- clearer names
- better questions
- better defaults

Avoid adding extra systems unless the user's workflow justifies them.
