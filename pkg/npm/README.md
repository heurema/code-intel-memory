# code-intel-memory

[![npm](https://img.shields.io/npm/v/code-intel-memory?style=flat&color=blue)](https://www.npmjs.com/package/code-intel-memory)
[![GitHub Release](https://img.shields.io/github/v/release/heurema/code-intel-memory?style=flat&color=blue)](https://github.com/heurema/code-intel-memory/releases/latest)
[![License](https://img.shields.io/badge/license-MIT-green)](https://github.com/heurema/code-intel-memory/blob/main/LICENSE)
[![Platform](https://img.shields.io/badge/macOS_%7C_Linux_%7C_Windows-supported-lightgrey)](https://github.com/heurema/code-intel-memory/releases/latest)

**The fastest and most efficient code intelligence engine for AI coding agents.** Full-indexes an average repository in milliseconds, the Linux kernel (28M LOC, 75K files) in 3 minutes. Answers structural queries in under 1ms. Ships as a single static binary — this package downloads and runs it automatically.

High-quality parsing through [tree-sitter](https://tree-sitter.github.io/tree-sitter/) AST analysis across 159 languages — producing a persistent knowledge graph of functions, classes, call chains, HTTP routes, and cross-service links. 14 MCP tools. Zero dependencies. Plug and play across 11 coding agents.

## Installation

```bash
npm install -g code-intel-memory
```

The binary for your platform is downloaded automatically at install time. Then configure your coding agents:

```bash
code-intel-memory install
```

Restart your agent. Say **"Index this project"** — done.

## Why code-intel-memory

- **Extreme indexing speed** — Linux kernel (28M LOC, 75K files) in 3 minutes. RAM-first pipeline with LZ4 compression and in-memory SQLite.
- **Plug and play** — single static binary for macOS (arm64/amd64), Linux (arm64/amd64), and Windows (amd64). No Docker, no runtime dependencies, no API keys.
- **159 languages** — vendored tree-sitter grammars compiled into the binary. Nothing to install, nothing that breaks.
- **120x fewer tokens** — 5 structural queries: ~3,400 tokens vs ~412,000 via file-by-file search.
- **11 agents, one command** — `install` auto-detects Claude Code, Codex CLI, Gemini CLI, Zed, OpenCode, Antigravity, Aider, KiloCode, VS Code, OpenClaw, and Kiro.
- **14 MCP tools** — search, trace, architecture, impact analysis, Cypher queries, dead code detection, cross-service HTTP linking, ADR management, and more.

## Supported Platforms

| OS      | Architecture |
|---------|-------------|
| macOS   | arm64, amd64 |
| Linux   | arm64, amd64 |
| Windows | amd64 |

## Usage

```bash
code-intel-memory install          # configure all detected coding agents
code-intel-memory --version
code-intel-memory --help
code-intel-memory update           # update to latest release
code-intel-memory uninstall        # remove agent configs
```

### CLI Mode

Every MCP tool is also available directly from the command line:

```bash
code-intel-memory cli index_repository '{"repo_path": "/path/to/repo"}'
code-intel-memory cli search_graph '{"name_pattern": ".*Handler.*", "label": "Function"}'
code-intel-memory cli trace_call_path '{"function_name": "main", "direction": "both"}'
code-intel-memory cli get_architecture '{}'
```

## MCP Tools

| Category | Tools |
|----------|-------|
| **Indexing** | `index_repository`, `list_projects`, `delete_project`, `index_status` |
| **Querying** | `search_graph`, `trace_call_path`, `detect_changes`, `query_graph` |
| **Analysis** | `get_architecture`, `get_graph_schema`, `get_code_snippet`, `search_code` |
| **Advanced** | `manage_adr`, `ingest_traces` |

## Performance

Benchmarked on Apple M3 Pro:

| Operation | Time |
|-----------|------|
| Linux kernel full index (28M LOC, 75K files) | 3 min |
| Django full index | ~6s |
| Cypher query | <1ms |
| Trace call path (depth=5) | <10ms |

## Full Documentation

See [github.com/heurema/code-intel-memory](https://github.com/heurema/code-intel-memory) for the full README including all MCP tools, configuration options, graph data model, and language support details.

## License

MIT
