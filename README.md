# system-scripts

Machine update flows via `go-task/task`.

## Prereqs

- install `task` on each machine
  - macos: `brew install go-task`
  - arch: `sudo pacman -S go-task`
- both flows prompt for `sudo` once up front via `sudo -v`
- each taskfile expects its referenced CLIs to already exist: `brew`, `pacman`, `paru`, `npm`, `bun`, `pnpm`, `nvim`, `code`, `flatpak`

## Run

- list macbook tasks: `task --taskfile macbook-m3-pro.yml --list`
- run macbook: `task --taskfile macbook-m3-pro.yml`
- list system76 tasks: `task --taskfile system76-lemur-pro.yml --list`
- run system76: `task --taskfile system76-lemur-pro.yml`
