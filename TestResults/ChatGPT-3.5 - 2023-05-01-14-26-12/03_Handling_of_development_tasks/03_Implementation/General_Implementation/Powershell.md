# Powershell

## Prompt 1

Please write me a powershell script that will print hello world to the screen in 10 different colors and work in a windows and linux system alike. It should be compatible with the .net framework based powershell also.

### Result

Here's a PowerShell script that will print "Hello World" in 10 different colors and work on both Windows and Linux systems with .NET framework-based PowerShell:

```powershell
# Define an array of colors
$colors = @( 'Black', 'Blue', 'Cyan', 'Gray', 'Green', 'Magenta', 'Red', 'White', 'Yellow', 'DarkYellow' )

# Loop through the colors and print "Hello World" in each color
foreach ($color in $colors) {
    Write-Host "Hello World" -ForegroundColor $color
}
```

This script uses the `Write-Host` cmdlet to print the message in the specified color. The `-ForegroundColor` parameter is used to specify the color. The `foreach` loop is used to iterate over the array of colors and print the message in each color. The `@()` syntax is used to define the array.
