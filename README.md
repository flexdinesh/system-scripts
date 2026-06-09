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

- list macOS setup tasks: `task --taskfile install/macos.yml --list`
- run macOS setup: `task --taskfile install/macos.yml`
- list Arch setup tasks: `task --taskfile install/arch.yml --list`
- run Arch setup: `task --taskfile install/arch.yml`

## Run updates

- list macOS update tasks: `task --taskfile update/macos.yml --list`
- run macOS updates: `task --taskfile update/macos.yml`
- list Arch update tasks: `task --taskfile update/arch.yml --list`
- run Arch updates: `task --taskfile update/arch.yml`
