# User Flow

This is the intended end-to-end experience for someone finding the repo from your video.

## 1. They Land On The Repo

They should understand three things fast:

- this is not another bloated second-brain template
- it works with multiple AI runtimes
- the setup is guided and personalized

That is why the README leads with the shared-core idea and the lean default structure.

## 2. They Clone And Open The Vault

They should only need to do two manual setup actions:

1. clone the repo
2. open it in Obsidian

Everything else should feel optional or guided.

## 3. They Install A Small Plugin Stack

The plugin stack should feel like infrastructure, not decoration.

Default message:

- `TaskNotes` if you want the assistant to manage real tasks
- `Dataview` for lightweight note queries
- everything else later, if needed

## 4. They Pick Their Runtime

The best experience is:

- Claude Code users read `CLAUDE.md`
- Codex users read `AGENTS.md`
- Gemini CLI users read `GEMINI.md`
- everyone else starts with the generic setup prompt

## 5. The AI Runs Onboarding

The agent should:

1. inspect the repo and runtime docs
2. ask a short set of high-signal questions
3. recommend what to enable and what to skip
4. personalize the memory layer
5. create only the structures that match the user's life

## 6. The User Starts Using It

After onboarding, the user should feel:

- the assistant understands their context
- the vault still feels small
- they did not have to invent the structure alone
- they can keep using a different model later without starting over

## UX Standard

If the setup makes the user feel like they adopted your life instead of organizing theirs, the repo has failed.
