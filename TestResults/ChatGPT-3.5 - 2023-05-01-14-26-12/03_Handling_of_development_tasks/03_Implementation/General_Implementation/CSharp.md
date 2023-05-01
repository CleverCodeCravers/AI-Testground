# C# Test

## Prompt 1

Please write me a small C# application that will be able to:

- Generate passwords
- It should have a command line parameter to control the length (10 is default)
- It should have command line parameters to control the combination (lowercase, uppercase, symbols...) and the allowed characters

## Result

Here is an example C# console application that generates passwords based on the specified length and character set:

```csharp
using System;
using System.Collections.Generic;
using System.Linq;

namespace PasswordGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            int length = 10;
            string allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";

            // Parse command line arguments
            if (args.Length > 0)
            {
                if (!int.TryParse(args[0], out length) || length < 1)
                {
                    Console.WriteLine("Invalid length specified. Using default length of 10.");
                    length = 10;
                }
            }

            if (args.Length > 1)
            {
                allowedChars = args[1];
            }

            // Build character set based on allowed characters
            var charSet = new List<char>();
            if (allowedChars.Contains("lowercase"))
            {
                charSet.AddRange("abcdefghijklmnopqrstuvwxyz");
            }

            if (allowedChars.Contains("uppercase"))
            {
                charSet.AddRange("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
            }

            if (allowedChars.Contains("digits"))
            {
                charSet.AddRange("1234567890");
            }

            if (allowedChars.Contains("symbols"))
            {
                charSet.AddRange("!@#$%^&*()-_=+[]{}\\|;:'\",.<>/?");
            }

            // Generate password
            var random = new Random();
            var password = new string(Enumerable.Repeat(charSet, length)
                .Select(s => s[random.Next(s.Count)]).ToArray());

            Console.WriteLine(password);
        }
    }
}
```

Here are some examples of how to use the application:

- `PasswordGenerator.exe` - generates a password with default length of 10 and default character set (lowercase, uppercase, and digits)
- `PasswordGenerator.exe 12` - generates a password with length of 12 and default character set (lowercase, uppercase, and digits)
- `PasswordGenerator.exe 8 lowercase` - generates a password with length of 8 and lowercase characters only
- `PasswordGenerator.exe 16 uppercase digits symbols` - generates a password with length of 16 and uppercase letters, digits, and symbols
