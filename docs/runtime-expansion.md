# Runtime Expansion

Use this when you want to add support for a new agent runtime.

## Principle

Do not rebuild the system for every tool.

Add the smallest possible adapter.

## Expansion Checklist

1. Check the runtime's current official conventions.
2. Identify its root instruction file or config surface.
3. Point that runtime back to `.ai/`.
4. Add runtime-specific behavior only if it creates real value.
5. Avoid copying memory files into a new location.

## Good Expansion

Good:

- one runtime note
- one small adapter folder if needed
- shared memory stays shared

Bad:

- duplicating the whole architecture
- adding a new folder tree for every new model
- making the user choose from ten provider-specific setup paths
