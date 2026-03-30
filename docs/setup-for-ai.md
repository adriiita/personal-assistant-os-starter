# Setup For AI

Pick the runtime you use and paste the matching prompt.

## Claude Code Prompt

```text
Read README.md, CLAUDE.md, .claude/README.md, .claude/context/CLAUDE.md, and .ai/playbooks/setup.md.

Then read .ai/skills/assistant-onboarding/SKILL.md and use it as the setup workflow.

Your job is to personalize this vault into an executive-assistant system for my real life and work.

Rules:
- Keep the vault lean.
- Do not add folders just because a template usually has them.
- Start with the memory layer in .ai/memory/.
- Ask only the highest-signal questions.
- Figure out which runtime-specific capabilities Claude can use well, and only wire those into .claude/ if they are actually useful.
- If I mention other runtimes like Codex or future agents, keep the shared truth in .ai/ and avoid locking the system to Claude.
- Build only what matches my real workflows: projects, meetings, content, tasks, research, personal systems, or other areas if relevant.

When in doubt, simplify.
```

## Codex Prompt

```text
Read README.md, AGENTS.md, .codex/README.md, .codex/context/AGENTS.md, and .ai/playbooks/setup.md.

Then read .ai/skills/assistant-onboarding/SKILL.md and use it as the setup workflow.

Your job is to personalize this vault into an executive-assistant system for my real life and work.

Rules:
- Keep the vault lean.
- Do not add folders just because a template usually has them.
- Start with the memory layer in .ai/memory/.
- Ask only the highest-signal questions.
- Research the current Codex-facing best practices only when a runtime-specific decision matters.
- Keep the shared truth in .ai/ so the system can work with Claude, Codex, and future agents.
- Build only what matches my actual workflows.

When in doubt, simplify.
```

## Gemini CLI Prompt

```text
Read README.md, GEMINI.md, AGENTS.md, docs/provider-map.md, and .ai/playbooks/setup.md.

Then read .ai/skills/assistant-onboarding/SKILL.md and use it as the setup workflow.

Your job is to personalize this vault into an executive-assistant system for my real life and work.

Rules:
- Keep the vault lean.
- Do not add folders just because templates usually have them.
- Start with the memory layer in .ai/memory/.
- Ask only the highest-signal questions.
- Keep the shared truth in .ai/ so this vault can work across Gemini, Claude, Codex, and future agents.
- Build only what matches my real workflows.

When in doubt, simplify.
```

## Generic Agent Prompt

```text
Read README.md and the docs folder first.

This repo is a portable AI executive-assistant starter.
The shared truth belongs in .ai/.
Your job is to personalize it for me without turning it into a bloated template.

Use .ai/playbooks/setup.md as the setup workflow.
Use .ai/skills/assistant-onboarding/SKILL.md as the onboarding behavior.

Before editing runtime-specific folders, inspect the current conventions for the agent runtime I am using and adapt only that layer.

Start with the memory files, ask concise high-signal questions, and build only what matches my real life and work.
```
