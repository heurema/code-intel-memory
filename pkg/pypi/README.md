# code-intel-memory

mcp-name: io.github.heurema/code-intel-memory

**Fast code intelligence engine for AI coding agents.** Indexes an average repository in milliseconds, the Linux kernel (28M LOC) in 3 minutes. Answers structural queries in under 1ms.

This package installs the `code-intel-memory` binary from [GitHub Releases](https://github.com/heurema/code-intel-memory/releases). The binary is downloaded on first run and cached in your OS cache directory.

## Installation

```bash
pip install code-intel-memory
# or
pipx install code-intel-memory
```

## Usage

```bash
code-intel-memory install   # configure your coding agents
code-intel-memory --help
```

## Supported platforms

| OS      | Architecture |
|---------|-------------|
| macOS   | arm64, amd64 |
| Linux   | arm64, amd64 |
| Windows | amd64 |

## Full documentation

See [github.com/heurema/code-intel-memory](https://github.com/heurema/code-intel-memory)
