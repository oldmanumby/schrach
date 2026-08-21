# Changelog

All notable changes to the SCHRACH framework will be documented in this file. 

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Support for a `.schrach/` hidden directory (with `docs`, `examples`, `scripts`, and `templates` subdirectories) to act as the AI's proprietary workspace and documentation caching mechanism.
- `## Context & Decisions` template section in `AGENTS.md` for capturing business logic and architectural intent.
- `## Framework Documentation Index` template section in `AGENTS.md` to explicitly point the AI to cached framework documentation.
- Created `scripts/init-schrach.sh` to automate the deployment of the framework and prevent AI premature execution.

### Changed
- Moved the master `AGENTS.md` rulebook and `AGENTS-TREE.md` global map to a hidden `.agents/` folder by default to keep the project root uncluttered.
- Updated the `README.md` to reflect the new `.agents/` folder structure and document the `.schrach/` workspace.
- Updated `AGENTS.md` core rules to explicitly mandate retrieval reasoning over pre-training reasoning.
- `AGENTS.md` rule 1 now scopes required child docs to "durable architectural boundaries" to prevent documentation sprawl in small projects.
- `init-schrach.sh` now runs with `set -euo pipefail` and stamps the deployed `AGENTS.md` `last_updated` field with today's date.

### Fixed
- Fixed the hardcoded, non-portable init script path in `README.md`; it is now a `/path/to/schrach/` placeholder.
- Fixed misleading leading-slash notation for the `.schrach/` workspace (it was written as if it were the filesystem root) in `README.md`, `CHANGELOG.md`, and the `AGENTS.md` template.
- Fixed `init-schrach.sh` to preserve an existing `AGENTS.md` as a backup instead of blindly appending it — including its stale frontmatter — to the new template; backups are no longer deleted.
- Corrected the `LICENSE` copyright holder to "SCHRACH contributors".
