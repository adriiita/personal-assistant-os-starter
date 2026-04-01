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

link_dir() {
  local target="$1"
  local link_path="$2"
  mkdir -p "$(dirname "$link_path")"
  rm -f "$link_path"
  ln -s "$target" "$link_path"
}

for file in learnings.md user_preferences.md user_projects.md skill-observations.md; do
  link_file "$ROOT_DIR/.claude/context/memory" "$file"
  link_file "$ROOT_DIR/.codex/context/memory" "$file"
done

rm -f "$ROOT_DIR/.claude/context/memory/work_status.md"
ln -s "../../../.ai/memory/runtime/claude-work-status.md" "$ROOT_DIR/.claude/context/memory/work_status.md"

rm -f "$ROOT_DIR/.codex/context/memory/work_status.md"
ln -s "../../../.ai/memory/runtime/codex-work-status.md" "$ROOT_DIR/.codex/context/memory/work_status.md"

link_dir "../.ai/skills" "$ROOT_DIR/.agents/skills"
link_dir "../.ai/skills" "$ROOT_DIR/.claude/skills"
link_dir "../.ai/skills" "$ROOT_DIR/.codex/skills"

echo "Runtime memory and skill adapters linked."
