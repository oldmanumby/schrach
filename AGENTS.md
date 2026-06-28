---
okf_version: 0.1
type: agent_memory
scope: /
last_updated: 2026-06-28
dependencies: []
status: active
---

# SCHRACH Framework (DOX + OKF)

- SCHRACH is a highly performant `AGENTS.md` hierarchy installed here.
- All AI agents must follow SCHRACH instructions across any edits.

## Core Contract

- `AGENTS.md` files are binding work contracts for their subtrees.
- Every `AGENTS.md` file **must** include the Google OKF YAML frontmatter at the top (as seen in this file) to define `scope`, `last_updated`, `dependencies`, and `status`.
- Work products, source materials, instructions, records, assets, and durable docs must stay understandable from the nearest applicable `AGENTS.md` plus every parent `AGENTS.md` above it.

## Read Before Editing

1. Read the root `AGENTS.md`.
2. Parse the OKF YAML frontmatter to understand the scope and dependencies.
3. Identify every file or folder you expect to touch.
4. Walk from the repository root to each target path.
5. Read every `AGENTS.md` found along each route.
6. If a parent `AGENTS.md` lists a child `AGENTS.md` whose scope contains the path, read that child and continue from there.
7. Use the nearest `AGENTS.md` as the local contract and parent docs for repo-wide rules.
8. If docs conflict, the closer doc controls local work details, but no child doc may weaken the global SCHRACH rules.

Do not rely on memory. Re-read the applicable SCHRACH chain in the current session before editing.

## Update After Editing

Every meaningful change requires a SCHRACH pass before the task is done.

Update the closest owning `AGENTS.md` when a change affects:
- purpose, scope, ownership, or responsibilities
- durable structure, contracts, workflows, or operating rules
- required inputs, outputs, permissions, constraints, side effects, or artifacts
- `AGENTS.md` creation, deletion, move, rename, or index contents

**CRITICAL:** When updating an `AGENTS.md` file, you MUST update the `last_updated` date and any relevant `dependencies` in the OKF YAML frontmatter.

Update parent docs when parent-level structure, ownership, workflow, or child index changes. Update child docs when parent changes alter local rules. Remove stale or contradictory text immediately. Small edits that do not change behavior or contracts may leave docs unchanged, but the SCHRACH pass still must happen.

## Hierarchy

- Root `AGENTS.md` is the central rail: project-wide instructions, global preferences, durable workflow rules, and the top-level Child Index.
- Child `AGENTS.md` files own domain-specific instructions and their own Child Index.
- Each parent explains what its direct children cover and what stays owned by the parent.
- The closer a doc is to the work, the more specific and practical it must be.

## Child Doc Shape

- **Auto-Initialization:** The AI agent is responsible for creating child `AGENTS.md` files. If you are scanning a project for the first time, or if a folder has grown into a durable boundary with its own purpose, rules, and workflow, you MUST autonomously generate a new `AGENTS.md` file for it. Do not wait for the user to create it manually.
- Every child MUST start with the standard OKF YAML frontmatter.
- Work Guidance must reflect the current standards of the project or user instructions; if there are no specific standards or instructions yet, leave it empty.
- Verification must reflect an existing check; if no verification framework exists yet, leave it empty and update it when one exists.

Default section order (after YAML frontmatter):
- Purpose
- Ownership
- Local Contracts
- Work Guidance
- Verification
- Child Index

## Style

- Keep docs concise, current, and operational.
- Document stable contracts, not diary entries.
- Put broad rules in parent docs and concrete details in child docs.
- Prefer direct bullets with explicit names.
- Do not duplicate rules across many files unless each scope needs a local version.
- Delete stale notes instead of explaining history.
- Trim obvious statements, repeated rules, misplaced detail, and warnings for risks that no longer exist.

## Closeout

1. Re-check changed paths against the SCHRACH chain.
2. Update nearest owning docs and any affected parents or children.
3. Refresh the `last_updated` timestamp and `dependencies` array in the YAML frontmatter of any modified docs.
4. Refresh every affected Child Index.
5. Remove stale or contradictory text.
6. Run existing verification when relevant.
7. Report any docs intentionally left unchanged and why.

## User Preferences

When the user requests a durable behavior change, record it here or in the relevant child `AGENTS.md`.

## Child Index

This project is not yet indexed. Before continuing you must scan the project, build the SCHRACH tree and replace this message with the actual index. Go deep and scan files recursively to properly evaluate complexity and create nested `AGENTS.md` files where needed.

---

## Custom Project Instructions

*(Users: Place your own custom project rules, tech stack preferences, and unrelated AI directives below this line.)*
