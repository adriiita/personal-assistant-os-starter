#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

echo "Shared memory:"
echo "- $ROOT_DIR/.ai/memory/user_preferences.md"
echo "- $ROOT_DIR/.ai/memory/user_projects.md"
echo "- $ROOT_DIR/.ai/memory/learnings.md"
echo "- $ROOT_DIR/.ai/memory/runtime/claude-work-status.md"

LATEST_LOG="$(find "$ROOT_DIR/.ai/session-logs" -maxdepth 1 -type f -name '*.md' ! -name 'TEMPLATE.md' | sort | tail -n 1 || true)"
if [ -n "${LATEST_LOG:-}" ]; then
  echo
  echo "Latest session log: $LATEST_LOG"
fi
