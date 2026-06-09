# Refactor Taskfile Layout

## Summary

Move the four root Taskfiles into `install/` and `update/`, rename them by platform, and update README usage commands plus internal task text.

## Key Implementation Changes

- Create `install/` and move:
  - `setup-arch.yml` -> `install/arch.yml`
  - `setup-macos.yml` -> `install/macos.yml`
- Create `update/` and move:
  - `system76-lemur-pro.yml` -> `update/arch.yml`
  - `macbook-m3-pro.yml` -> `update/macos.yml`
- Update `README.md` commands to use:
  - `task --taskfile install/macos.yml`
  - `task --taskfile install/arch.yml`
  - `task --taskfile update/macos.yml`
  - `task --taskfile update/arch.yml`
- Update internal descriptions/precondition messages to remove old filename and device-name references.

## Tests or Verification

- Run `rg` to confirm old filenames no longer appear.
- Run `task --taskfile <path> --list` for each new Taskfile if `task` is available.

## Decisions Made by the User

- Use directory names `install/` and `update/`.
- Use platform filenames `arch.yml` and `macos.yml`.
- Rename internal task descriptions/messages to match the new generic layout.

## Tradeoffs and Risks Discussed

- Existing shell aliases or external scripts using the old root filenames will break unless updated outside this repo.
- `update/arch.yml` and `update/macos.yml` become platform-based rather than machine-specific, which is cleaner but loses device specificity in names.

## Remaining Open Questions

None.

## Execution Guidance

If implementation needs to deviate from this plan, update this saved plan first and surface the deviation before continuing.
