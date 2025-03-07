index=$(tmux list-windows -F '#I: #W' | \
  fzf --height 40% --reverse --color hl:underline,hl+:reverse | \
  cut -d: -f1)

if [ -n "$index" ]; then
  tmux select-window -t "$index"
fi
