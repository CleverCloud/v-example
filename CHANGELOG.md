# Changelog

## [2026-10-15]

### Changed
- README normalized to the Clever Cloud example format (fixed the title, which said "Zig",
  added how it works, project structure, running locally and troubleshooting sections)

### Added
- `assets/clever-cloud-logo.png` for the README header
- `.last-checked` maintenance stamp

### Notes
- Engine: V is provided by the Clever Cloud base image (0.5.2, the latest stable release)
  and is not pinned in the repository
- No dependencies: the example only uses the V standard library (`veb`)
