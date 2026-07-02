# Changelog

All notable changes to the SCHRACH framework will be documented in this file. 

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- Support for a `/.schrach/` hidden directory (with `/docs`, `/examples`, `/scripts`, `/templates` subdirectories) to act as the AI's proprietary workspace and documentation caching mechanism.
- `## Context & Decisions` template section in `AGENTS.md` for capturing business logic and architectural intent.
- `## Framework Documentation Index` template section in `AGENTS.md` to explicitly point the AI to cached framework documentation.
- Created `scripts/init-schrach.sh` to automate the deployment of the framework and prevent AI premature execution.

### Changed
- Moved the master `AGENTS.md` rulebook and `AGENTS-TREE.md` global map to a hidden `.agents/` folder by default to keep the project root uncluttered.
- Updated the `README.md` to reflect the new `.agents/` folder structure and document the `/.schrach/` workspace.
- Updated `AGENTS.md` core rules to explicitly mandate retrieval reasoning over pre-training reasoning.
