#!/bin/bash

# Install git hooks script
# Run this script to set up git hooks for the monorepo

set -e

echo "🔧 Installing git hooks..."

# Get the repository root
REPO_ROOT=$(git rev-parse --show-toplevel)
HOOKS_DIR="$REPO_ROOT/.githooks"
GIT_HOOKS_DIR="$REPO_ROOT/.git/hooks"

# Create git hooks directory if it doesn't exist
mkdir -p "$GIT_HOOKS_DIR"

# Copy hooks and make them executable
if [ -f "$HOOKS_DIR/pre-push" ]; then
    cp "$HOOKS_DIR/pre-push" "$GIT_HOOKS_DIR/pre-push"
    chmod +x "$GIT_HOOKS_DIR/pre-push"
    echo "✅ Installed pre-push hook"
fi

if [ -f "$HOOKS_DIR/commit-msg" ]; then
    cp "$HOOKS_DIR/commit-msg" "$GIT_HOOKS_DIR/commit-msg"
    chmod +x "$GIT_HOOKS_DIR/commit-msg"
    echo "✅ Installed commit-msg hook"
fi

echo "🎉 Git hooks installation complete!"
echo ""
echo "📋 Installed hooks:"
echo "  - pre-push: Validates branch name, commits, analyze, and formatting"
echo ""
echo "💡 To bypass hooks (not recommended): git push --no-verify"
echo "🔄 To reinstall hooks: run this script again"
