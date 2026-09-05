# system-scripts

Machine setup and update flows via `go-task/task`.

## Prereqs

- install `task` on each machine
  - mac-work: `brew install go-task`
  - mac-neo: `brew install go-task`
  - arch: `sudo pacman -S go-task`
- setup taskfiles expect their platform package manager and `npm` to already exist
  - mac-work: `brew`, `npm`
  - mac-neo: `brew`, `npm`
  - arch: `sudo`, `pacman`, `npm`
- update taskfiles expect their referenced CLIs to already exist: `brew`, `pacman`, `paru`, `npm`, `bun`, `pnpm`, `nvim`, `code`, `flatpak`
- flows that need `sudo` prompt once up front via `sudo -v`

## Setup

- list mac-work setup tasks: `task --taskfile install/mac-work.yml --list`
- run mac-work setup: `task --taskfile install/mac-work.yml`
- list mac-neo setup tasks: `task --taskfile install/mac-neo.yml --list`
- run mac-neo setup: `task --taskfile install/mac-neo.yml`
- list arch setup tasks: `task --taskfile install/arch.yml --list`
- run arch setup: `task --taskfile install/arch.yml`

## Run updates

- list mac-work update tasks: `task --taskfile update/mac-work.yml --list`
- run mac-work updates: `task --taskfile update/mac-work.yml`
- list mac-neo update tasks: `task --taskfile update/mac-neo.yml --list`
- run mac-neo updates: `task --taskfile update/mac-neo.yml`
- list Arch update tasks: `task --taskfile update/arch.yml --list`
- run Arch updates: `task --taskfile update/arch.yml`
