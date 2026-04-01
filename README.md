# Personal Assistant OS Starter

Portable AI executive-assistant infrastructure for Obsidian, Claude Code, Codex, Gemini CLI, and future agent runtimes.

This is not a giant template vault.
It is a small starter system that gives your AI tools one shared brain:

- shared memory in `.ai/`
- runtime adapters for Claude, Codex, and Gemini-style workflows
- a guided onboarding flow so the AI personalizes the vault to your life
- an Obsidian-first folder structure that stays readable without any AI

## What This Repo Is For

Most "AI second brain" setups break because the demo works, but the system does not survive real life.

This starter is built around a different idea:

1. Put the durable truth in plain markdown.
2. Keep the runtime-specific logic thin.
3. Ask the user good onboarding questions before creating structure.
4. Add folders, plugins, and workflows only when they are actually needed.

## What You Get

- Minimal starter folders: `Projects`, `Thinking`, `Reference`, `Meetings`, `TaskNotes`, `Archive`
- Shared memory files for preferences, projects, learnings, skill observations, and runtime work status
- A better onboarding skill that interviews the user, recommends what to enable, and updates the vault accordingly
- An `auto-research` skill for structured research loops and synthesis
- Shared skills in `.ai/skills/`, surfaced through `.claude/skills`, `.codex/skills`, and `.agents/skills`
- Docs for both humans and AI agents
- Root instruction files for `AGENTS.md`, `CLAUDE.md`, and `GEMINI.md`
- Optional Claude slash commands for people who want a convenience layer

## What You Do Not Get By Default

- no giant template dump
- no default `Inbox/`, `Goals/`, `Daily/`, or `Templates/`
- no Excalidraw-heavy structure unless the user wants it
- no assumption that Claude is the only runtime

Those things can be added during onboarding if they fit the user.

## Quick Start

1. Clone this repo.
2. Open it as an Obsidian vault.
3. Install the small plugin stack from [docs/plugin-stack.md](docs/plugin-stack.md).
4. Read [docs/setup-for-humans.md](docs/setup-for-humans.md).
5. Paste the right onboarding prompt from [docs/setup-for-ai.md](docs/setup-for-ai.md) into Claude Code, Codex, Gemini CLI, or another agent.

## First-Run User Flow

The intended experience is simple:

1. `git clone`
2. open the folder in Obsidian
3. install the minimal plugin stack
4. launch your AI runtime
5. paste one onboarding prompt
6. answer a short set of questions
7. let the AI personalize the vault around your actual life and work

Read [docs/user-flow.md](docs/user-flow.md) if you want the detailed walkthrough.

## Runtime Model

The core lives in `.ai/`.
The runtime surfaces live in `.claude/`, `.codex/`, `.agents/`, and root instruction files like `GEMINI.md`.

That means:

- if you change tools later, your memory stays
- if a new agent appears next month, you add an adapter instead of rebuilding your brain
- your notes still make sense even without any AI attached

Read [docs/provider-map.md](docs/provider-map.md) for the runtime differences.

## Optional Runtime Extras

- Claude Code users can use the optional commands in `.claude/commands/`
- all runtime skill surfaces point back to `.ai/skills/`
- Codex users should rely on `AGENTS.md` plus built-in Codex commands
- Gemini users can rely on `GEMINI.md`; custom commands can be added later if needed

## Recommended Install Links

- Claude Code: follow Anthropic's official docs at [docs.anthropic.com](https://docs.anthropic.com/)
- Codex: follow OpenAI's official setup docs at [help.openai.com](https://help.openai.com/en/articles/11096431)
- Gemini CLI: follow the official CLI setup at [github.com/google-gemini/gemini-cli](https://github.com/google-gemini/gemini-cli)
- Obsidian: [obsidian.md](https://obsidian.md)

## Repo Layout

```text
.
├── .ai/                 # shared canonical core
├── .agents/             # generic skill adapter surface
├── .claude/             # Claude-specific runtime layer
├── .codex/              # Codex-specific runtime layer
├── .github/             # lightweight repo automation
├── Archive/
├── Meetings/
├── Projects/
├── Reference/
├── TaskNotes/
├── Thinking/
├── AGENTS.md
├── CLAUDE.md
├── GEMINI.md
└── docs/
```

## Best First Move

Do not customize everything at once.

Give the AI one real job:

- understand who you are
- understand what work you do
- understand which runtime you use
- turn this starter into your actual operating system

That is what the onboarding flow is for.

## License

MIT. See [LICENSE](LICENSE).
