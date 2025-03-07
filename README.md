# Tmux FZF Window Switcher

A simple tmux plugin that provides a fuzzy finder interface to quickly switch between tmux windows using [fzf](https://github.com/junegunn/fzf). 

## Features

- Quickly navigate between windows using fuzzy search
- Customizable key binding
- Fast and intuitive window switching with search capabilities
- Works with all tmux versions that support the bind-key command

## Requirements

- [tmux](https://github.com/tmux/tmux)
- [fzf](https://github.com/junegunn/fzf)

## Installation

### Using [TPM](https://github.com/tmux-plugins/tpm) (recommended)

Add this line to your `.tmux.conf`:

set -g @plugin 'prajinkhadka/tmux-fzf-window' and source the conf file.

Then press `prefix + I` to install the plugin.

Available options:

| Option               | Default | Description                               |
|----------------------|---------|-------------------------------------------|
| @fzf-window-key      | C-e     | Key binding to trigger the window finder  |

## How It Works

The plugin creates a temporary split window to display the fzf interface for selecting among your current tmux windows. When you make a selection, it switches to that window and automatically closes the selection interface.

## Troubleshooting

### FZF Not Found

Make sure fzf is installed and available in your PATH. You can install it following the instructions at https://github.com/junegunn/fzf.

### Key Binding Not Working

If the key binding doesn't work, try:

1. Checking for conflicts with other bindings in your `.tmux.conf`
2. Ensuring the plugin is properly installed
3. Restarting your tmux server (`tmux kill-server` then start tmux again)

# TODO
- Implement cross-session window switching ( Righnow only searches window for current active session )
- Add configuration for fzf appearance options (height, width, etc.)
- Create preview option to see window content
- Add window management capabilities (rename, kill, etc.)
- Implement sorting options (by name, by last access)
- Add window search history/favorites
- Add option to filter windows by content/running process
- Support for window groups
