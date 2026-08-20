#!/bin/bash

# Define the master SCHRACH path based on where this script is located
SCHRACH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Target directory is the current working directory where the script is executed
TARGET_DIR=$(pwd)

echo "Initializing SCHRACH Framework in $TARGET_DIR..."

# Create necessary directories
mkdir -p "$TARGET_DIR/.agents"
mkdir -p "$TARGET_DIR/.schrach/docs"
mkdir -p "$TARGET_DIR/.schrach/examples"
mkdir -p "$TARGET_DIR/.schrach/scripts"
mkdir -p "$TARGET_DIR/.schrach/templates"

# Copy master files (if they don't already exist to prevent overwriting custom rules accidentally)
if [ ! -f "$TARGET_DIR/.agents/AGENTS.md" ]; then
    cp "$SCHRACH_DIR/.agents/AGENTS.md" "$TARGET_DIR/.agents/AGENTS.md"
    echo "✔ Created .agents/AGENTS.md"
else
    echo "⚠ .agents/AGENTS.md already exists, merging with SCHRACH framework..."
    mv "$TARGET_DIR/.agents/AGENTS.md" "$TARGET_DIR/.agents/AGENTS.backup.md"
    cp "$SCHRACH_DIR/.agents/AGENTS.md" "$TARGET_DIR/.agents/AGENTS.md"
    echo -e "\n\n### Preserved Custom Rules (from prior AGENTS.md)\n" >> "$TARGET_DIR/.agents/AGENTS.md"
    cat "$TARGET_DIR/.agents/AGENTS.backup.md" >> "$TARGET_DIR/.agents/AGENTS.md"
    rm "$TARGET_DIR/.agents/AGENTS.backup.md"
    echo "✔ Merged existing .agents/AGENTS.md with SCHRACH framework rules."
fi

if [ ! -f "$TARGET_DIR/.agents/AGENTS-TREE.md" ]; then
    cp "$SCHRACH_DIR/.agents/AGENTS-TREE.md" "$TARGET_DIR/.agents/AGENTS-TREE.md"
    echo "✔ Created .agents/AGENTS-TREE.md"
else
    echo "⚠ .agents/AGENTS-TREE.md already exists, skipping."
fi

echo "SCHRACH initialization complete! You may now instruct your AI agent to read the framework."
