#!/usr/bin/env bash
set -euo pipefail

# Define the master SCHRACH path based on where this script is located
SCHRACH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Target directory is the current working directory where the script is executed
TARGET_DIR="$(pwd)"

# Stamp the template's last_updated field with today's date so deployed
# files are never born stale.
stamp_template() {
    sed "s/^last_updated:.*/last_updated: $(date +%F)/" "$1"
}

echo "Initializing SCHRACH Framework in $TARGET_DIR..."

# Create necessary directories
mkdir -p "$TARGET_DIR/.agents"
mkdir -p "$TARGET_DIR/.schrach/docs"
mkdir -p "$TARGET_DIR/.schrach/examples"
mkdir -p "$TARGET_DIR/.schrach/scripts"
mkdir -p "$TARGET_DIR/.schrach/templates"

# Copy master files without destroying any existing work.
if [ ! -f "$TARGET_DIR/.agents/AGENTS.md" ]; then
    stamp_template "$SCHRACH_DIR/.agents/AGENTS.md" > "$TARGET_DIR/.agents/AGENTS.md"
    echo "✔ Created .agents/AGENTS.md"
else
    BACKUP="$TARGET_DIR/.agents/AGENTS.backup.md"
    # Never clobber an existing backup: timestamp it if one is already present.
    if [ -e "$BACKUP" ]; then
        BACKUP="$TARGET_DIR/.agents/AGENTS.backup.$(date +%Y%m%d%H%M%S).md"
    fi
    echo "⚠ .agents/AGENTS.md already exists. Preserving it at .agents/$(basename "$BACKUP")..."
    mv "$TARGET_DIR/.agents/AGENTS.md" "$BACKUP"
    stamp_template "$SCHRACH_DIR/.agents/AGENTS.md" > "$TARGET_DIR/.agents/AGENTS.md"
    echo "✔ Installed fresh .agents/AGENTS.md with last_updated stamped to today."
    echo "  → Review the preserved rules, move the ones that still apply into the"
    echo "    '## Custom Project Instructions' section, then delete the backup file."
fi

if [ ! -f "$TARGET_DIR/.agents/AGENTS-TREE.md" ]; then
    cp "$SCHRACH_DIR/.agents/AGENTS-TREE.md" "$TARGET_DIR/.agents/AGENTS-TREE.md"
    echo "✔ Created .agents/AGENTS-TREE.md"
else
    echo "⚠ .agents/AGENTS-TREE.md already exists, skipping."
fi

echo "SCHRACH initialization complete! You may now instruct your AI agent to read the framework."
