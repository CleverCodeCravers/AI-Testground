# Powershell

## Prompt 1

Please write me a powershell script that will print hello world to the screen in 10 different colors and work in a windows and linux system alike. It should be compatible with the .net framework based powershell also.

### Result

To create a PowerShell script that prints "Hello World" in 10 different colors and works on both Windows and Linux systems, you can use ANSI escape sequences. This approach is compatible with both Windows PowerShell and PowerShell Core.

Create a new file named `HelloWorldColors.ps1` and add the following content:

```powershell
$colors = @(
    "91", # Red
    "92", # Green
    "93", # Yellow
    "94", # Blue
    "95", # Magenta
    "96", # Cyan
    "97", # White
    "31", # Bright Red
    "32", # Bright Green
    "34"  # Bright Blue
)

foreach ($color in $colors) {
    $ansiColor = [char]27 + "[" + $color + "m"
    Write-Host "${ansiColor}Hello World" -NoNewline
    Write-Host ([char]27) + "[0m" # Reset color
}
```

To run the script, open PowerShell (or PowerShell Core) and execute:

```powershell
./HelloWorldColors.ps1
```

This script will print "Hello World" in 10 different colors, one after another, and is compatible with both Windows and Linux systems as well as .NET Framework-based PowerShell.
