#!/bin/bash

# ABOUTME: This script copies actual config files to the dotfiles repo
# ABOUTME: Run this before setting up symlinks to populate the repo

DOTFILES_DIR="$HOME/.config/dot/dotfiles"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "📋 Copying config files to dotfiles repo..."

# Function to copy file/directory
copy_config() {
    local source=$1
    local target=$2
    
    if [ ! -e "$source" ]; then
        echo -e "${RED}✗ Source not found: $source${NC}"
        return 1
    fi
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    # Copy the file/directory
    if [ -d "$source" ]; then
        cp -r "$source" "$target"
        echo -e "${GREEN}✓ Copied directory: $source → $target${NC}"
    else
        cp "$source" "$target"
        echo -e "${GREEN}✓ Copied file: $source → $target${NC}"
    fi
}

# Config directory items (these already exist in repo, so we'll update them)
echo -e "\n${YELLOW}Updating existing configs:${NC}"
# nvim, skhd, yabai already exist - skip them unless you want to update

# New configs to add
echo -e "\n${YELLOW}Adding new configs:${NC}"
copy_config "$HOME/.config/ghostty" "$DOTFILES_DIR/ghostty"
copy_config "$HOME/.zshrc" "$DOTFILES_DIR/.zshrc"
copy_config "$HOME/.tmux.conf" "$DOTFILES_DIR/.tmux.conf"
copy_config "$HOME/.claude/commands" "$DOTFILES_DIR/.claude/commands"
copy_config "$HOME/.claude/CLAUDE.md" "$DOTFILES_DIR/.claude/CLAUDE.md"
copy_config "$HOME/CLAUDE.md" "$DOTFILES_DIR/.claude/CLAUDE_HOME.md"

echo -e "\n${GREEN}✨ Copy complete!${NC}"
echo -e "${YELLOW}Next steps:${NC}"
echo "1. Review the copied files: cd $DOTFILES_DIR && git status"
echo "2. Remove any sensitive data (API keys, passwords, etc.)"
echo "3. Commit the changes: git add . && git commit -m \"Update dotfiles\""
echo "4. Push to GitHub: git push"
echo "5. Run setup-symlinks.sh to create symlinks"
