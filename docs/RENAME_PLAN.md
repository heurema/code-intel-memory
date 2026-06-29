# Plan

Rename this fork from `codebase-memory-mcp` to `code-intel-memory` while preserving upstream Apache 2.0 provenance and keeping a temporary compatibility path for downstream installers such as Goalrail. The work should land as reviewable slices: public docs first, package/install surfaces second, runtime identifiers last, with grep inventories and build/test smoke checks after each slice.

## Scope
- In: README and docs copy, website metadata, package manifests, installer scripts, binary/package filenames, wrapper package names, MCP/server metadata, CLI help/version strings, tests that assert the old name, and compatibility aliases needed by Goalrail.
- Out: publishing releases, pushing branches, changing Goalrail, deleting upstream license/provenance notices, or claiming a public repository URL that has not been verified.

## Action items
[ ] Freeze the rename contract: primary name `code-intel-memory`, primary command `code-intel-memory`, compatibility command/package `codebase-memory-mcp` kept only where needed for migration.
[ ] Update public docs first: `README.md`, `docs/index.html`, `docs/llms.txt`, `docs/sitemap.xml`, `docs/robots.txt`, `docs/BENCHMARK.md`, `docs/EVALUATION_PLAN.md`, and `docs/SECURITY-DISCLOSURE.md`.
[ ] Update package metadata and wrappers: `server.json`, `pkg/npm`, `pkg/pypi`, `pkg/go`, `pkg/homebrew`, `pkg/aur`, `pkg/scoop`, `pkg/chocolatey`, `pkg/winget`, and release archive names.
[ ] Update installer and setup surfaces: `install.sh`, `install.ps1`, `scripts/setup.sh`, `scripts/setup-windows.ps1`, security/install checks, benchmark scripts, and release workflows.
[ ] Update runtime-visible identifiers: CLI help/version strings, MCP server title/name, UI title, cache/config paths only if migration/alias behavior is explicit.
[ ] Add or keep compatibility aliases for old command/package names, then document the deprecation window and Goalrail integration impact.
[ ] Preserve provenance: keep `LICENSE`, third-party notices, upstream references where legally required, and add a fork/provenance note instead of erasing DeusData history.
[ ] Run rename inventory checks with `rg` for old names and classify remaining matches as compatibility, provenance, vendored checksum, or bug.
[ ] Run validation: `make -f Makefile.cbm cbm`, focused CLI/package tests, and a production `index_repository` smoke through the renamed command.
[ ] Commit rename in focused slices: docs/metadata, packaging/installers, runtime/tests, then do a final grep-and-build verification commit if needed.

## Open questions
- What is the final public repository URL and owner: `heurema/code-intel-memory` or another target?
- Should the PyPI/npm/Homebrew package names change immediately, or should old package names remain as transitional wrappers?
- What deprecation window should Goalrail use before switching from `codebase-memory-mcp` to `code-intel-memory`?
