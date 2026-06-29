$ErrorActionPreference = 'Stop'

$packageName = 'code-intel-memory'
$installDir  = Join-Path $env:ChocolateyBinRoot $packageName

Uninstall-BinFile -Name 'code-intel-memory'
Uninstall-BinFile -Name 'codebase-memory-mcp'

if (Test-Path $installDir) {
  Remove-Item $installDir -Recurse -Force
}
