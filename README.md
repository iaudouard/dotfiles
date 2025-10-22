# Dotfiles

Managed with GNU Stow using per-app packages that mirror final paths under $HOME.

## Prerequisites
- GNU Stow
- Git

## Layout (packages -> target paths)
- zsh/.zshrc -> ~/.zshrc
- aerospace/.aerospace.toml -> ~/.aerospace.toml
- nvim/.config/nvim -> ~/.config/nvim
- tmux/.config/tmux -> ~/.config/tmux
- wezterm/.config/wezterm -> ~/.config/wezterm
- starship/.config/starship -> ~/.config/starship

## Quick start
Clone, then dry-run to preview links:
```bash
git clone git@github.com:iaudouard/dotfiles.git ~/dotfiles
cd ~/dotfiles
make dry-run
```

Install all packages into $HOME:
```bash
make install
```

Update existing links after changes:
```bash
make restow
```

Uninstall (remove symlinks):
```bash
make uninstall
```

Install only specific packages:
```bash
make install PKGS="zsh nvim tmux"
```

## Conflicts
If a real file/dir already exists where a link should go, back it up and try again. Example:
```bash
mv ~/.zshrc ~/.zshrc.bak
mv ~/.config/nvim ~/.config/nvim.bak
make install
```

## tmux tips
Reload config:
- inside tmux session
```tmux
prefix + r 
```
- outisde session
```bash
tmux source-file ~/.config/tmux/tmux.conf
```

## Notes
- .stow-local-ignore prevents stow from linking repo metadata (e.g., .git, README.md).
