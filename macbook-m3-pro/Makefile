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
	npm install -g npm@latest
	npm update -g
	@echo
	@echo "================================================================"
	@echo
	@echo "===== PNPM ====="
	pnpm update -g --latest
	@echo
	@echo "================================================================"
	@echo
	@echo "===== CLAUDE ====="
	claude update
	@echo
	@echo "================================================================"
	@echo
	@echo "===== OPENCODE ====="
	opencode upgrade
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
	@echo "===== SDKMAN ====="
	sdk selfupdate || true
	@echo
	@echo "================================================================"
	@echo
	@echo "===== DONE ====="
