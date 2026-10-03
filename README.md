# system-scripts

Machine setup and update flows via `go-task/task`.

## Prereqs

- bootstrap `task` once on each machine to run the taskfiles
  - mac-work: `brew install go-task`
  - mac-neo: `brew install go-task`
  - arch: `sudo pacman -S go-task`
- setup taskfiles also install `go` and `go-task`; Go need not be preinstalled
- setup taskfiles expect their platform package manager and `npm` to already exist
  - mac-work: `brew`, `npm`
  - mac-neo: `brew`, `npm`
  - arch: `sudo`, `pacman`, `npm`
- update taskfiles expect their referenced CLIs to already exist: `brew`, `pacman`, `paru`, `npm`, `bun`, `pnpm`, `nvim`, `code`, `flatpak`
- flows that need `sudo` prompt once up front via `sudo -v`

## Setup

Use one of the files.

- list install tasks example: `task --taskfile install/mac-work.yml --list`
- run install tasks example: `task --taskfile install/mac-work.yml`
- run update tasks example: `task --taskfile update/mac-work.yml`
