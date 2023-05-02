# C# Test

## Prompt 1

Please write me a small C# application that will be able to:

- Generate passwords
- It should have a command line parameter to control the length (10 is default)
- It should have command line parameters to control the combination (lowercase, uppercase, symbols...) and the allowed characters

## Result

Here's a small C# application that generates passwords based on the command line parameters:

```csharp
using System;
class Program
{
    static void Main(string[] args)
    {
        // Get command line parameters
        int length = 10; // Default length is 10
        bool lowercase = true;
        bool uppercase = true;
        bool symbols = true;
        string allowedCharacters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?";
        // Check command line parameters
        if (args.Length > 0)
        {
            if (args[0] == "--length")
            {
                length = int.Parse(args[1]);
            }
            if (args[0] == "--lowercase")
            {
                lowercase = false;
            }
            if (args[0] == "--uppercase")
            {
                uppercase = false;
            }
            if (args[0] == "--symbols")
            {
                symbols = false;
            }
            if (args[0] == "--characters")
            {
                allowedCharacters = args[1];
            }
        }
        // Generate password
        string password = new string(new char[length]);
        for (int i = 0; i < length; i++)
        {
            int randomIndex = new Random().Next(allowedCharacters.Length);
            password[i] = allowedCharacters[randomIndex];
        }
        // Print password
        if (lowercase)
        {
            password = password.ToLower();
        }
        if (uppercase)
        {
            password = password.ToUpper();
        }
        Console.WriteLine(password);
    }
}
```

To use this application, simply run it from the command line with the appropriate command line parameters:

```
--length 12 --lowercase --symbols "123456789"
```

This will generate a password with a length of 12, no lowercase or uppercase characters, and the allowed characters "123456789".
