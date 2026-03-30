# Plugin Stack

Keep the plugin layer small.

## Required

### TaskNotes

Use this if you want the assistant to create and manage real tasks from chat.

Why it stays:

- tasks need dates, priorities, and statuses
- it gives the system a real execution layer, not just notes

### Dataview

Use this for lightweight views and querying notes without adding a separate database.

Why it stays:

- useful enough to justify the cost
- common dependency for Obsidian-based systems

## Recommended

### Calendar

Use this only if your workflow benefits from date navigation.

### Terminal

Helpful if you like running git, scripts, or agent commands from inside Obsidian.

## Optional

### Base Board

Only if you want board views without turning content or project management into a giant kanban system.

## Not Included By Default

- Excalidraw
- large template systems
- daily-note heavy workflows
- goal systems
- extra visual plugins

Those are not bad.
They are just not default infrastructure.
