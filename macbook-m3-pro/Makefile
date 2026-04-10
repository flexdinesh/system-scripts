.PHONY: update

SHELL := /bin/bash
.SHELLFLAGS := -e -c

update:
	@echo "===== HOMEBREW ====="
	brew update
	brew upgrade --greedy
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NPM ====="
	gtimeout 30s npm install -g npm@latest
	gtimeout 30s npm update -g
	@echo
	@echo "================================================================"
	@echo
	@echo "===== BUN ====="
	bun upgrade
	gtimeout 30s bun update -g --latest || true
	@echo
	@echo "================================================================"
	@echo
	@echo "===== PNPM ====="
	gtimeout 30s pnpm update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== CLAUDE ====="
	gtimeout 30s claude update
	@echo
	@echo "================================================================"
	@echo
	@echo "===== OPENCODE ====="
	gtimeout 30s opencode upgrade
	@echo
	@echo "================================================================"
	@echo
	@echo "===== NEOVIM ====="
	gtimeout 30s nvim --headless "+Lazy! update" +qa
	@echo
	@echo "================================================================"
	@echo
	@echo "===== VSCODE ====="
	gtimeout 30s code --update-extensions
	@echo
	@echo "================================================================"
	@echo
	@echo "===== DONE ====="
