CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DEFAULT_KEY="C-e"
FZF_KEY=$(tmux show-option -gqv @fzf-window-key)
FZF_KEY=${FZF_KEY:-$DEFAULT_KEY}

tmux bind-key -n "$FZF_KEY" split-window -l 5 "$CURRENT_DIR/scripts/fzf_window.sh"
