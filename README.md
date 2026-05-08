# system-scripts

Machine setup and update flows via `go-task/task`.

## Prereqs

- install `task` on each machine
  - macos: `brew install go-task`
  - arch: `sudo pacman -S go-task`
- setup taskfiles expect their platform package manager and `npm` to already exist
  - macos: `brew`, `npm`
  - arch: `sudo`, `pacman`, `npm`
- update taskfiles expect their referenced CLIs to already exist: `brew`, `pacman`, `paru`, `npm`, `bun`, `pnpm`, `nvim`, `code`, `flatpak`
- flows that need `sudo` prompt once up front via `sudo -v`

## Setup

- list macOS setup tasks: `task --taskfile setup-macos.yml --list`
- run macOS setup: `task --taskfile setup-macos.yml`
- list Arch setup tasks: `task --taskfile setup-arch.yml --list`
- run Arch setup: `task --taskfile setup-arch.yml`

## Run updates

- list macbook tasks: `task --taskfile macbook-m3-pro.yml --list`
- run macbook: `task --taskfile macbook-m3-pro.yml`
- list system76 tasks: `task --taskfile system76-lemur-pro.yml --list`
- run system76: `task --taskfile system76-lemur-pro.yml`
