---
name: assistant-onboarding
description: Personalize this executive-assistant starter into a real working system. Use when the user asks to set up, onboard, personalize, or adapt the vault to their life, work, tools, and AI runtime.
---

# Assistant Onboarding

Use this skill when the user wants the starter turned into their actual system.

## Objective

Build a personalized executive-assistant environment without dumping a giant template on the user.

## Core Rules

- Ask only the highest-signal questions.
- Prefer recommendations over endless options.
- Build only what the user will really use.
- Update shared memory before runtime-specific surfaces.
- Keep the vault lean.

## What To Learn

### 1. Identity

Learn:

- who they are
- what kind of work they do
- the 1-3 active areas that matter most right now

### 2. Runtime

Learn:

- which AI runtime they actually use today
- whether they expect the system to work across multiple runtimes

If they use a named runtime, inspect the current conventions for that runtime before editing its adapter layer.

### 3. Workflows

Detect whether they need:

- project management
- task management
- meetings
- content creation
- research
- personal-life tracking

### 4. Tooling

Learn what they already use:

- Obsidian only
- calendar
- messaging
- task system
- coding tools
- meeting tools

## Interview Style

Keep the interview short.

Default flow:

1. Ask 3 identity and workflow questions.
2. Ask 2 runtime and tooling questions.
3. Recommend what to enable and what to skip.
4. Build.

If the user says "just build it," make reasonable assumptions and proceed.

## Build Order

1. Update `.ai/memory/user_preferences.md`
2. Update `.ai/memory/user_projects.md`
3. Add durable learnings to `.ai/memory/learnings.md` only if they will matter later
4. Create or refine the top-level folders the user actually needs
5. Add project folders and guide files
6. Add runtime-specific notes or wiring only if helpful

## Default Recommendations

Bias toward enabling:

- `Projects/`
- `Thinking/`
- `Reference/`
- `TaskNotes/` if the user wants real tasks
- `Meetings/` only if they have recurring meetings

Bias toward skipping unless clearly needed:

- `Inbox/`
- `Goals/`
- `Daily/`
- template-heavy systems
- visual plugins

## Definition Of Done

The user should finish onboarding with:

- a clearer structure
- a filled-in memory layer
- a runtime that can understand their context
- fewer moving parts than they expected
