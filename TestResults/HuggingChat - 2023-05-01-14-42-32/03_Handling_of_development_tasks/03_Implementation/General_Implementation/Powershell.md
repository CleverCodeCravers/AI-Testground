# Powershell

## Prompt 1

Please write me a powershell script that will print hello world to the screen in 10 different colors and work in a windows and linux system alike. It should be compatible with the .net framework based powershell also.

### Result

Print Hello World in Different Colors Compatible Across Windows & Linux with .NET Framework-based PowerShell Script

PowerShell v6+ supports multiple console fonts, allowing us to change text color. However, cross-platform compatibility requires sending escape codes specific to each operating system, which makes scripting difficult. Fortunately, there are modules available to help simplify this process. Install these dependencies with your package manager of choice:
Dependency Package Name Command
Pash - Console --Install-Module PashConsole Install-PackageProvider -Name NuGet -MinimumVersion 4.9.0
Colorable colorable Install-ModuleColorable -Force

With those packages installed, let's move forward with the script itself:
powershell_print_hello_world_colors.ps1

```powershell
# Set the path to the Pash console font files used for cross-platform support

$PashFontPath = Join-Path ([System.Environment]::ExpandUserProfile), '.local', 'share', 'fonts', 'Pash'

# Load the Pash Console module

Import-Module -Name ColorfulConsole -Verbose
Start-Process cmd /c ".\path\to\colorizer_cli.exe" "-i" "-x" "$($env:COLUMNS*$env:PIXELSIZE)" "-y" "$($env:LINES*$env:PIXELSIZE)/cyan/magenta/red/yellow/green/blue/indigo/violet/grayscale"

Write-Host "Hello world!"@foreGround -foregroundColor "cyan"
Write-Host "Hello world!"@foreGround -foregroundColor "magenta"
Write-Host "Hello world!"@foreGround -foregroundColor "red"
Write-Host "Hello world!"@foreGround -foregroundColor "yellow"
Write-Host "Hello world!"@foreGround -foregroundColor "green"
Write-Host "Hello world!"@foreGround -foregroundColor "blue"
Write-Host "Hello world!"@foreGround -foreGro
```
