# system-scripts

Machine update flows via `process-compose`.

## Prereqs

- install `process-compose` on each machine
  - macos: `sh -c "$(curl --location https://raw.githubusercontent.com/F1bonacc1/process-compose/main/scripts/get-pc.sh)" -- -d`
  - arch: `sh -c "$(curl --location https://raw.githubusercontent.com/F1bonacc1/process-compose/main/scripts/get-pc.sh)" -- -d`
- Linux: your user can authenticate `sudo`
- each config expects its referenced CLIs to already exist: `brew`, `npm`, `bun`, `pnpm`, `claude`, `opencode`, `nvim`, `code`, `paru`, `flatpak`

## Run

- macbook: `process-compose -f macbook-m3-pro.yaml up`
- system76: `process-compose -f system76-lemur-pro.yaml up`
- no TUI: `process-compose -t=false -f <file> up`

Old `macbook-m3-pro/` and `system76-lemur-pro/` dirs stay untouched.
