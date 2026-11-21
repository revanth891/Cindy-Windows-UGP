$ErrorActionPreference = 'Stop'

$destination = Join-Path $PSScriptRoot 'build-source'
if (Test-Path -LiteralPath $destination) { throw "The extraction directory already exists: $destination" }
Expand-Archive -LiteralPath (Join-Path $PSScriptRoot 'source/Cindy.zip') -DestinationPath $destination
$source = Join-Path $destination 'Cindy'
Write-Output "Source ready. Follow Build from source in $source\README.md."
