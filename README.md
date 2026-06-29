# SCHRACH (Self-Contexting Hierarchy)

SCHRACH is a framework for AI/Agents to update a system of parent and child `AGENTS.md` files at all levels of a project file tree. It acts as a localized, self-healing agentic memory system.

This work is based upon and combines two recent developments:

- [DOX](https://github.com/agent0ai/dox) by [Agent Zero](https://github.com/agent0ai): A tiny `AGENTS.md` framework that gives an AI agent precise, hierarchical project context.
- [Google OKF (Open Knowledge Format)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing): An open specification that formalizes the [LLM-wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) pattern into a portable format using Markdown and YAML frontmatter.

## What Does SCHRACH Do?

Large Language Models struggle with "Lost in the Middle" syndrome when fed an entire project's codebase or a single, bloated `AGENTS.md` file. SCHRACH solves this by:

1. **Contextual Pruning (from DOX):** Instead of one massive instruction file, SCHRACH distributes instructions into a localized tree of `AGENTS.md` files. An agent reads the root file, then traverses down the directory tree to find the specific local guidelines for the files it intends to edit.
2. **Perfect Metadata Parsing (from OKF):** Every `AGENTS.md` file requires strict YAML frontmatter. This allows any AI agent to instantly parse metadata—like dependencies, scope, and when the rules were last updated—without having to guess the structure of the document.
3. **The Global Map:** A dynamically maintained `AGENTS-TREE.md` file sits at the project root. The AI agent automatically updates this file whenever it creates or modifies an `AGENTS.md` file, providing a constantly up-to-date visual map of the entire project structure for instant navigation without blind searching.

The result is a self-maintaining memory system. The AI understands the local rules, makes precise edits, and updates the local `AGENTS.md` file to keep the documentation current. Less guessing. Less drift.

## How To Use SCHRACH

1. Copy the contents of [`AGENTS.md`](./AGENTS.md) into the root of your project.
2. Update the YAML frontmatter in the root `AGENTS.md` to reflect your project details.
3. Tell your AI agent (like Claude, Cursor, or Google Antigravity): *"Please initialize the SCHRACH hierarchy for this project."*
4. The AI will autonomously scan your entire project tree, evaluate the complexity of your codebase, and automatically generate all necessary nested `AGENTS.md` files (complete with OKF YAML metadata) for you. You do not have to write them manually!
