# Codex Runtime Layer

This folder is the Codex-facing adapter for the shared `.ai/` core.

Use it for:

- Codex-specific orientation docs
- adapter views into shared memory
- a skill adapter surface in `.codex/skills/`

Do not fork the memory layer or shared skills here.
`.codex/skills/` should point back to `.ai/skills/`.
