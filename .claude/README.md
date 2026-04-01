# Claude Runtime Layer

This folder is the Claude-facing adapter for the shared `.ai/` core.

Use it for:

- Claude-specific instructions
- Claude hook wiring
- other Claude-native behavior
- a skill adapter surface in `.claude/skills/`

Do not duplicate shared memory or shared skills here.
`.claude/skills/` should point back to `.ai/skills/`.
