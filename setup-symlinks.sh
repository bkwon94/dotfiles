#!/bin/bash

# ABOUTME: This script creates symlinks from actual config files to the dotfiles repo
# ABOUTME: Run this to keep your dotfiles in sync with your system

DOTFILES_DIR="$HOME/.config/dot/dotfiles"

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo "🔗 Setting up dotfiles symlinks..."

# Function to create symlink
create_symlink() {
    local source=$1
    local target=$2
    
    # Create parent directory if it doesn't exist
    mkdir -p "$(dirname "$target")"
    
    # If target already exists as a symlink, remove it
    if [ -L "$target" ]; then
        rm "$target"
        echo -e "${YELLOW}↻ Replacing existing symlink: $target${NC}"
    # If target exists as a regular file/directory
    elif [ -e "$target" ]; then
        echo -e "${RED}⚠ File exists (not a symlink): $target${NC}"
        echo "  Please backup and remove it manually, then run this script again"
        return 1
    fi
    
    # Create the symlink
    ln -s "$source" "$target"
    echo -e "${GREEN}✓ Linked: $source → $target${NC}"
}

# Config directory items
echo -e "\n${YELLOW}Config Directory Items:${NC}"
create_symlink "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
create_symlink "$DOTFILES_DIR/skhd" "$HOME/.config/skhd"
create_symlink "$DOTFILES_DIR/yabai" "$HOME/.config/yabai"
create_symlink "$DOTFILES_DIR/ghostty" "$HOME/.config/ghostty"

# Home directory files
echo -e "\n${YELLOW}Home Directory Files:${NC}"
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
create_symlink "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
create_symlink "$DOTFILES_DIR/.tmux" "$HOME/.tmux"
create_symlink "$DOTFILES_DIR/.claude/commands" "$HOME/.claude/commands"
create_symlink "$DOTFILES_DIR/.claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
create_symlink "$DOTFILES_DIR/.claude/CLAUDE_HOME.md" "$HOME/CLAUDE.md"
create_symlink "$DOTFILES_DIR/ghostty" "$HOME/.config/ghostty"

echo -e "\n${GREEN}✨ Symlink setup complete!${NC}"
echo -e "${YELLOW}Note: Before running this script, you need to:${NC}"
echo "1. Copy your actual config files to the dotfiles repo"
echo "2. Organize them in the appropriate structure"
echo "3. Commit the changes to git"
echo -e "\n${YELLOW}Next steps:${NC}"
echo "1. Run: ./copy-to-repo.sh (to copy files to repo)"
echo "2. Review and commit changes"
echo "3. Run this script to create symlinks"
