# Dotfiles

This repository contains my personal dotfiles managed using GNU Stow. It includes configurations for:
- tmux - Terminal multiplexer
- Neovim - Modern vim text editor
- Zsh - Shell environment
- WezTerm - GPU-accelerated terminal emulator

## Prerequisites

- GNU Stow
- Git

Install stow on:
- macOS: `brew install stow`

## Installation

1. Clone this repository:
```bash
git clone https://github.com/iaudouard/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

```bash
# Install all configurations
stow . 
```

## Structure

```
.
├── .config
│   └── nvim
│       ├── init.lua
│       └── ...
│   └── tmux
│       └── .tmux.conf
|   └── wezterm
│       └── .wezterm.lua
└── .zshrc
```


## Removing

To remove symlinks for a specific configuration:
```bash
stow -D package_name
```

