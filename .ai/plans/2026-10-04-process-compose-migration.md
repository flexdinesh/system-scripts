# Process Compose Migration

## Summary
- add `macbook-m3-pro.yaml` and `system76-lemur-pro.yaml` at repo root
- keep existing machine dirs and Makefiles untouched
- add concise root `README.md` with prereqs and run commands
- keep process commands direct; do not port Makefile shell wrappers
- drop timeout wrappers from commands after checking docs

## Key Changes
1. Add `macbook-m3-pro.yaml`
- use direct one-shot commands from the Makefile
- split sequential command lines into dependent processes
- run `brew update`, then `brew upgrade --greedy`
- fan out `npm`, `bun`, `pnpm`, `claude`, `opencode`, `neovim`, `vscode` after `brew`
- remove `gtimeout` wrappers

2. Add `system76-lemur-pro.yaml`
- use direct one-shot commands from the Makefile
- run `pacman`, then `paru`
- fan out `flatpak`, `npm`, `bun`, `pnpm`, `neovim`, `vscode` after `paru`
- remove `timeout` wrappers

3. Add root `README.md`
- list `process-compose` as required on both machines
- note `sudo` on Linux
- document `process-compose -f <file> up`

## Verification
- `process-compose -f macbook-m3-pro.yaml up --dry-run`
- `process-compose -f system76-lemur-pro.yaml up --dry-run`

## Decisions
- create root `README.md`
- leave old Makefiles untouched
- parallelize independent steps
- keep process commands direct; no shell wrapper port
- docs checked: `timeout_seconds` there is for shutdown/probes, not normal process runtime

## Risks
- logs interleave more than Make output
- missing CLIs still fail their own task
- no per-step runtime cutoff in current configs

## Execution Guidance
- if implementation deviates, update this plan first and surface the change

## Open Questions
- none
