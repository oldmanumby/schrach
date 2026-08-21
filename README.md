# SCHRACH (Self-Contexting Hierarchy)

SCHRACH is a framework for AI/Agents to update a system of parent and child `AGENTS.md` files at all levels of a project file tree. It acts as a localized, self-healing agentic memory system.

This work is based upon and combines two recent developments:

- [DOX](https://github.com/agent0ai/dox) by [Agent Zero](https://github.com/agent0ai): A tiny `AGENTS.md` framework that gives an AI agent precise, hierarchical project context.
- [Google OKF (Open Knowledge Format)](https://cloud.google.com/blog/products/data-analytics/how-the-open-knowledge-format-can-improve-data-sharing): An open specification that formalizes the [LLM-wiki](https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f) pattern into a portable format using Markdown and YAML frontmatter.

## What Does SCHRACH Do?

Large Language Models struggle with "Lost in the Middle" syndrome when fed an entire project's codebase or a single, bloated `AGENTS.md` file. SCHRACH solves this by:

1. **Contextual Pruning (from DOX):** Instead of one massive instruction file, SCHRACH distributes instructions into a localized tree of `AGENTS.md` files. An agent reads the root master file (typically located in a `.agents/` folder), then traverses down the directory tree to find the specific local guidelines for the files it intends to edit.
2. **Perfect Metadata Parsing (from OKF):** Every `AGENTS.md` file requires strict YAML frontmatter. This allows any AI agent to instantly parse metadata—like dependencies, scope, and when the rules were last updated—without having to guess the structure of the document.
3. **The Global Map:** A dynamically maintained `AGENTS-TREE.md` file sits alongside the master file. The AI agent automatically updates this file whenever it creates or modifies an `AGENTS.md` file, providing a constantly up-to-date visual map of the entire project structure for instant navigation without blind searching.
4. **Business Logic & Context:** Technical code tells the AI *how*, but SCHRACH includes a "Context & Decisions" section to tell the AI *why*. This prevents agents from accidentally undoing intentional architectural decisions.
5. **The `.schrach/` Proprietary Directory:** A hidden directory at the project root, `.schrach/`, acts as the AI's personal workspace. It contains `.schrach/docs` for caching external framework documentation (enabling reliable, verbatim retrieval) and `.schrach/examples` for storing golden code reference patterns.

The result is a self-maintaining memory system. The AI understands the local rules, makes precise edits, and updates the local `AGENTS.md` file to keep the documentation current. Less guessing. Less drift.

## How To Use SCHRACH

To prevent AI "premature execution" (where an agent hallucinates the framework rules instead of reading them), initialization should be handled via a script *before* the agent reads the rules.

1. **Initialize the files manually**: Open a terminal in your new project's root directory and run the initialization script:
   ```bash
   bash /path/to/schrach/scripts/init-schrach.sh
   ```
2. **Setup the basics**: Open the newly copied `.agents/AGENTS.md` and update the YAML frontmatter and the `Custom Project Instructions` at the bottom to reflect your new project's specific rules and tech stack.
3. **Instruct the Agent**: Once the files are in place, start your AI agent session. Do NOT bury the SCHRACH initialization into a massive multi-step prompt. Provide a dedicated instruction first:
   > *"I have scaffolded the SCHRACH framework. Please read the root `.agents/AGENTS.md` file carefully. Then, scan my project tree and automatically generate any necessary nested `AGENTS.md` files according to the framework's rules."*
