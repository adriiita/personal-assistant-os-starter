# Shared Core

This is the canonical layer for the starter system.

Put durable truth here:

- memory
- skills
- session logs
- playbooks

Do not duplicate this logic into runtime folders unless a runtime truly requires its own surface.

## Skills

`.ai/skills/` is the canonical skills directory.

Runtime or compatibility surfaces should point back here:

- `.agents/skills/`
- `.claude/skills/`
- `.codex/skills/`
