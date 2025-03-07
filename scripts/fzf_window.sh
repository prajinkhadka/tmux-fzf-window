#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Main function
tmux_fzf_window() {
  local index
  index=$(tmux list-windows -F '#I: #W' | \
    fzf --height 40% --reverse --color hl:underline,hl+:reverse | \
    cut -d: -f1)

  if [ -n "$index" ]; then
    tmux select-window -t "$index"
  fi
}

# Run the function
tmux_fzf_window
