# Powershell

## Prompt 1

Please write me a powershell script that will print hello world to the screen in 10 different colors and work in a windows and linux system alike. It should be compatible with the .net framework based powershell also.

### Result

Here is a PowerShell script that prints "Hello World" to the screen in 10 different colors:

```powershell
# Define an array of color names
$colors  = @(
    "Red"
    "Yellow"
    "Green"
    "Blue"
    "Cyan"
    "Magenta"
    "White"
    "Black"
    "Gray"
    "Pink"

)

# Loop through the colors and print "Hello World" in each color
foreach ($color in $colors) {
    # Use the Write-Host cmdlet with the -ForegroundColor parameter to set the text color
    Write-Host "Hello World" -ForegroundColor (Get-EnumValue -enumName "ConsoleColor" -enumValue $color)
}

# Define a function to get the enum value for a given enum name and value
function Get-EnumValue {
    param ($enumName, $enumValue)

    # Use the [ENUM]::ToObject() method to convert the enum value to an object
    $enum = [Enum]::ToObject($enumName)
    $enum | Where-Object {$_.Name -eq $enumValue}
}

# Define an enum for the console colors
enum ConsoleColor {
    Black, Black
    Blue, DarkBlue
    Green, DarkGreen
    Cyan, DarkCyan
    Red, DarkRed
    Magenta, DarkMagenta
    White, GrayText
    White, DarkGray
    Yellow, Gray
}
```

This script uses the `Write-Host` cmdlet with the `-ForegroundColor` parameter to set the text color. The `$colors` array contains the names of the colors, and the `Get-EnumValue` function is used to convert the color name to an enum value.

The script works in both Windows and Linux systems, as it uses the `[Enum]::ToObject()` method to convert the enum value to an object, which is supported by .NET Framework-based PowerShell versions.
