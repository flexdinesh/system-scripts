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
	paru --noconfirm
	@echo
	@echo "================================================================"
	@echo
	@echo "===== FLATPAK ====="
	flatpak update -y
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NPM ====="
	npm install -g npm@latest
	npm update -g
	@echo
	@echo "================================================================"
	@echo
	@echo "===== BUN ====="
	bun upgrade
	bun update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== PNPM ====="
	pnpm update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NEOVIM ====="
	nvim --headless "+Lazy! update" +qa
	@echo
	@echo "================================================================"
	@echo
	@echo "===== VSCODE ====="
	code --update-extensions
	@echo
	@echo "================================================================"
	@echo
	@echo "===== DONE ====="
