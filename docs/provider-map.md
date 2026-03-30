# Provider Map

This repo is designed around one idea:
the runtime can change, but the memory should stay.

## Shared Core

Always shared:

- `.ai/memory/`
- `.ai/session-logs/`
- `.ai/playbooks/`
- `.ai/skills/`

## Claude

Good at:

- native repo-local runtime docs through `CLAUDE.md`
- hook-based automation inside `.claude/`
- workflow-specific setup if you want Claude-native behavior

Keep in mind:

- Claude-specific hooks and slash commands belong only in `.claude/`
- those should stay thin and should point back to the shared core

## Codex

Good at:

- working directly from `AGENTS.md`
- reading and updating shared markdown architecture
- acting as the implementation runtime for the system itself

Keep in mind:

- do not assume Codex has Claude-style hooks
- use `.codex/` as an adapter and context surface, not a duplicate system

## Gemini CLI

Good at:

- root-level repo instructions through `GEMINI.md`
- quick terminal-first interaction
- joining the same shared markdown architecture as the other runtimes

Keep in mind:

- Gemini-specific state should not become the main system
- keep Gemini guidance thin and point it back to `.ai/`

## Other Agents

Treat every other provider the same way:

1. inspect its current conventions
2. create only the runtime layer it needs
3. keep the real memory and project truth in `.ai/`

## Decision Rule

When you need to choose where something should live:

- if it is durable and should survive tool changes, put it in `.ai/`
- if it exists only because of a runtime feature, put it in that runtime folder
