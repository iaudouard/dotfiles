REPO_DIR := $(CURDIR)
TARGET   := $(HOME)
PKGS     := zsh aerospace starship nvim tmux wezterm

dry-run:
	stow -n -v -t $(TARGET) -d $(REPO_DIR) $(PKGS)

install:
	stow -S -v -t $(TARGET) -d $(REPO_DIR) $(PKGS)

uninstall:
	stow -D -v -t $(TARGET) -d $(REPO_DIR) $(PKGS)

restow:
	stow -R -v -t $(TARGET) -d $(REPO_DIR) $(PKGS)
