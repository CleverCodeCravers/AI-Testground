# C# Test

## Prompt 1

Please write me a small C# application that will be able to:

- Generate passwords
- It should have a command line parameter to control the length (10 is default)
- It should have command line parameters to control the combination (lowercase, uppercase, symbols...) and the allowed characters

## Result

Here is a small C# application that generates passwords based on command line parameters:

```csharp
using System;
using System.Text;

namespace PasswordGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            int length = 10; // default length
            bool includeLowercase = true;
            bool includeUppercase = true;
            bool includeSymbols = false;

            if (args.Length > 0)
            {
                if (!int.TryParse(args[0], out length))
                {
                    Console.WriteLine("Error: Invalid length parameter");
                    return;
                }

                if (args.Length > 1 && args[1].Equals("lowercase", StringComparison.OrdinalIgnoreCase))
                {
                    includeLowercase = true;
                }
                else if (args.Length > 1 && args[1].Equals("uppercase", StringComparison.OrdinalIgnoreCase))
                {
                    includeUppercase = true;
                }
                else if (args.Length > 1 && args[1].Equals("symbols", StringComparison.OrdinalIgnoreCase))
                {
                    includeSymbols = true;
                }
                else
                {
                    Console.WriteLine("Error: Invalid combination parameter");
                    return;
                }

                if (args.Length > 2)
                {
                    // custom character set
                    string charSet  = args[2];
                    // TO DO: implement custom character set support
                 }
            }

            Random random  = new Random();
            char[] password  = new char[length];

            if (includeLowercase)
            	{password.AsSpan().Fill('a', 'z');}

            if (includeUppercase)
            	{password.AsSpan().Fill('A', 'Z');}

            if (includeSymbols)
            	{password.AsSpan().Fill('!', '@', '#', '$', '%', '^', '&', '*', '_', '+'));}

            for (int i = 0; i < length - includeLowercase - includeUppercase - includeSymbols; i++)
            	{password[i]  = (char)random.Next(128);}

            Shuffle(password);

            Console.WriteLine(new string(password));

        }

        static void Shuffle<T>(T[] array)
         {   // Fisher-Yates shuffle
            int n  = array.Length;
            while  (--n > 1)
            	{int k  = random.Next(n);
                T value  = array[k];
                array[k]  = array[n - 1];
                array[n - 1]  = value;}
        }
    }
}
```

You can run this application from the command line, specifying the desired length and combination of characters. For example:

```bash
PasswordGenerator.exe 12 lowercase symbols !@#$%^&*
```

This would generate a 12-character password using only lowercase letters, symbols (!, @, #, $, etc.), and random characters.

Note that this implementation does not support custom character sets (e.g., specifying a specific set of characters to use). You can add support for this by implementing the `custom character set` parameter.
