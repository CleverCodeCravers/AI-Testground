# Powershell

## Prompt 1

Please write me a powershell script that will print hello world to the screen in 10 different colors and work in a windows and linux system alike. It should be compatible with the .net framework based powershell also.

### Result

Sure, here's a PowerShell script that prints "Hello World!" in 10 different colors and works in both Windows and Linux systems:

```powershell
# Define the colors
$colors = "red,green,yellow,blue,purple,cyan,magenta,white,black,brightred"
# Loop through the colors and print "Hello World!" in each color
foreach ($color in $colors) {
    Write-Output "Hello World!" -ForegroundColor $color
}
```

To run this script, save it as a `.ps1` file and open it in your PowerShell console. You can also create a shortcut to the script in your desktop or start menu and run it from there.
This script uses the `Write-Output` cmdlet to print "Hello World!" to the console in the specified color. The `-ForegroundColor` parameter specifies the color to use for the text.
Note that the colors used in this script are just an example and may not be recognized by all terminal emulators. You can use any colors that are supported by your terminal emulator.
