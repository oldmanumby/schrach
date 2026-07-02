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
    echo "⚠ .agents/AGENTS.md already exists, skipping to prevent overwrite."
fi

if [ ! -f "$TARGET_DIR/.agents/AGENTS-TREE.md" ]; then
    cp "$SCHRACH_DIR/.agents/AGENTS-TREE.md" "$TARGET_DIR/.agents/AGENTS-TREE.md"
    echo "✔ Created .agents/AGENTS-TREE.md"
else
    echo "⚠ .agents/AGENTS-TREE.md already exists, skipping."
fi

echo "SCHRACH initialization complete! You may now instruct your AI agent to read the framework."
