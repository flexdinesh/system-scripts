.PHONY: update

SHELL := /bin/bash
.SHELLFLAGS := -e -c

update:
	@echo "===== PACMAN ====="
	sudo pacman -Syu --noconfirm
	@echo
	@echo "================================================================"
	@echo
	@echo "===== PARU ====="
	paru -Syu --noconfirm
	@echo
	@echo "================================================================"
	@echo
	@echo "===== FLATPAK ====="
	timeout 120s sudo flatpak update -y
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NPM ====="
	timeout 30s npm install -g npm@latest
	timeout 30s npm update -g
	@echo
	@echo "================================================================"
	@echo
	@echo "===== BUN ====="
	timeout 30s bun upgrade
	timeout 30s bun update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== PNPM ====="
	timeout 30s pnpm update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NEOVIM ====="
	timeout 30s nvim --headless "+Lazy! update" +qa
	@echo
	@echo "================================================================"
	@echo
	@echo "===== VSCODE ====="
	timeout 30s code --update-extensions
	@echo
	@echo "================================================================"
	@echo
	@echo "===== DONE ====="
