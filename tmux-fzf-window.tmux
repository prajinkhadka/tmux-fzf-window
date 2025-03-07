#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the script
source "$CURRENT_DIR/scripts/fzf_window.sh"

# Set up the keybinding
DEFAULT_KEY="C-1"
FZF_KEY=$(tmux show-option -gqv @fzf-window-key)
FZF_KEY=${FZF_KEY:-$DEFAULT_KEY}

# Bind the key to the function
tmux bind-key -n "$FZF_KEY" run-shell -b "$CURRENT_DIR/scripts/fzf_window.sh"
