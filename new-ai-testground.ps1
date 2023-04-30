param(
    [Parameter(Mandatory=$true)][string]$sourcePath,
    [Parameter(Mandatory=$true)][string]$baseDestinationPath,
    [Parameter(Mandatory=$true)][string]$name
)

# Ensure source path exists
if (-not (Test-Path $sourcePath)) {
    Write-Error "Source path does not exist"
    exit 1
}

# Ensure destination path exists
if (-not (Test-Path $baseDestinationPath)) {
    Write-Error "Base destination path does not exist"
    exit 1
}

# Get current timestamp
$timestamp = Get-Date -Format "yyyy-MM-dd-HH-mm-ss"

# Create the new directory with name and timestamp
$newDestinationPath = Join-Path $baseDestinationPath "$name - $timestamp"
New-Item -Path $newDestinationPath -ItemType Directory

# Copy the contents of the source path to the new destination path
Copy-Item -Path (Join-Path $sourcePath '*') -Destination $newDestinationPath -Recurse

Write-Host "Contents copied to $newDestinationPath"
