# C# Test

## Prompt 1

Please write me a small C# application that will be able to:

- Generate passwords
- It should have a command line parameter to control the length (10 is default)
- It should have command line parameters to control the combination (lowercase, uppercase, symbols...) and the allowed characters

## Result

Sure! Here's a simple C# application that generates strong passwords based on user input from the command line arguments. The main function checks the number of arguments passed and their validity before generating the password.

Here's the code:

```csharp

using System;
using System.IO;
using System.Security.Entropy;
using System.Text;

namespace PasswordGeneratorConsoleApp
{
    internal enum PasscodeFormatType
    {
        PlainText = 0,
        Base64EncodedText = 1,
        UnicodeEscapeSequenceText = 2,
    }

    internal enum CharacterClassification
    {
        LettersLower = 'a',
        LettersUpper = 'A',
        Symbols = '@',
        Digits = '#',
        Letters = ('A' - 'LettersLower') | ('Z' - 'LettersUpper')
    }

    class Program
    {
        static void Main(string[] args)
        {
            // check whether enough commands were provided
            if (args.Length < 3 || args.Length > 5)
            {
                DisplayUsageInformation();
                return;
            }

            int minPasswordCharacters = 8;
            int maxPasswordCharacters = 8;
            char[] characterSet = Enum.GetValues(typeof(CharacterClassification)) as char[];

            // retrieve options from cmd line arguments
            if (!int.TryParse(args[0], out minPasswordCharacters) && minPasswordCharacters != 10)
            {
                ShowErrorAndExit("The first argument must specify the desired password length between 8 and 16. Example format: --length=16.\nPlease enter another value: ");
                minPasswordCharacters = int.Parse(args[0]);
                if (minPasswordCharacters < 8 || minPasswordCharacters > 16)
                    minPasswordCharacters = 8;
            }

            if (!int.TryParse(args[1], out maxPassw

```
