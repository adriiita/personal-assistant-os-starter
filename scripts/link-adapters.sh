#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

link_file() {
  local runtime_dir="$1"
  local name="$2"
  local target="../../../.ai/memory/$name"
  mkdir -p "$runtime_dir"
  rm -f "$runtime_dir/$name"
  ln -s "$target" "$runtime_dir/$name"
}

for file in learnings.md user_preferences.md user_projects.md skill-observations.md; do
  link_file "$ROOT_DIR/.claude/context/memory" "$file"
  link_file "$ROOT_DIR/.codex/context/memory" "$file"
done

rm -f "$ROOT_DIR/.claude/context/memory/work_status.md"
ln -s "../../../.ai/memory/runtime/claude-work-status.md" "$ROOT_DIR/.claude/context/memory/work_status.md"

rm -f "$ROOT_DIR/.codex/context/memory/work_status.md"
ln -s "../../../.ai/memory/runtime/codex-work-status.md" "$ROOT_DIR/.codex/context/memory/work_status.md"

echo "Runtime memory adapters linked."
