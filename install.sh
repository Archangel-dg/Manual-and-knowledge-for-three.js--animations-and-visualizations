#!/usr/bin/env bash
#
# install.sh — Install the "threejs-handbook" Claude Code skill globally.
#
# Copies .claude/skills/threejs-handbook into ~/.claude/skills/ so Claude Code
# auto-activates the Three.js Production Handbook in EVERY project on this machine.
#
# Usage:
#   ./install.sh            # install (or update) globally into ~/.claude/skills
#   ./install.sh --help     # show this help
#
# Re-run any time after pulling changes to update the installed copy.

set -euo pipefail

SKILL_NAME="threejs-handbook"

# Resolve the directory this script lives in (so it works from anywhere).
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="${SCRIPT_DIR}/.claude/skills/${SKILL_NAME}"
DEST_DIR="${HOME}/.claude/skills"
DEST="${DEST_DIR}/${SKILL_NAME}"

if [[ "${1:-}" == "--help" || "${1:-}" == "-h" ]]; then
  sed -n '2,12p' "${BASH_SOURCE[0]}" | sed 's/^# \{0,1\}//'
  exit 0
fi

# Verify the source skill exists.
if [[ ! -f "${SRC}/SKILL.md" ]]; then
  echo "ERROR: Could not find the skill at:" >&2
  echo "  ${SRC}/SKILL.md" >&2
  echo "Run this script from inside the handbook repository." >&2
  exit 1
fi

echo "Installing '${SKILL_NAME}' skill..."
echo "  from: ${SRC}"
echo "  to:   ${DEST}"

# Fresh copy: remove any previous install, then copy.
mkdir -p "${DEST_DIR}"
rm -rf "${DEST}"
cp -R "${SRC}" "${DEST}"

# Report what landed.
REF_COUNT=$(find "${DEST}/references" -maxdepth 1 -name '*.md' | wc -l | tr -d ' ')
echo ""
echo "Done. Installed SKILL.md + ${REF_COUNT} reference chapters."
echo ""
echo "Next steps:"
echo "  1. Restart Claude Code (or start a new session)."
echo "  2. Verify with:  ls ~/.claude/skills/${SKILL_NAME}"
echo "  3. It now auto-activates on any Three.js / R3F / WebGL / shader work,"
echo "     or invoke it explicitly with:  /${SKILL_NAME}"
