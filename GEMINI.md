# Personal Assistant Starter

Read `README.md`, `AGENTS.md`, and `docs/provider-map.md` first.

This repo is designed so Gemini can work from the same shared core as Claude and Codex.

## Canonical Core

Treat `.ai/` as the shared source of truth:

- `.ai/memory/`
- `.ai/session-logs/`
- `.ai/playbooks/`
- `.ai/skills/`

## Setup Rule

If the user asks Gemini to personalize the system:

1. read `.ai/playbooks/setup.md`
2. use `.ai/skills/assistant-onboarding/SKILL.md`
3. update `.ai/memory/` first
4. keep the vault lean
5. only add runtime-specific behavior if Gemini actually needs it

## Style Rule

Do not turn this into a giant template vault.

Bias toward:

- fewer folders
- clearer names
- fewer assumptions
- better onboarding questions
