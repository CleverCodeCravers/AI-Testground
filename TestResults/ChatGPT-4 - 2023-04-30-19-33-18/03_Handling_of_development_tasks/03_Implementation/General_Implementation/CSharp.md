# C# Test

## Prompt 1

Please write me a small C# application that will be able to:

- Generate passwords
- It should have a command line parameter to control the length (10 is default)
- It should have command line parameters to control the combination (lowercase, uppercase, symbols...) and the allowed characters

## Result

Here's a simple C# console application that generates passwords based on the specified command-line parameters:

1. Create a new C# console application project.

2. Replace the contents of the `Program.cs` file with the following code:

```csharp
using System;
using System.Linq;
using System.Text;

namespace PasswordGenerator
{
    class Program
    {
        static void Main(string[] args)
        {
            int length = 10;
            string allowedChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-+=<>?/{}[]|:;,.~`";

            for (int i = 0; i < args.Length; i++)
            {
                if (args[i] == "-l" && i + 1 < args.Length)
                {
                    if (int.TryParse(args[i + 1], out int tempLength))
                    {
                        length = tempLength;
                        i++;
                    }
                }
                else if (args[i] == "-c" && i + 1 < args.Length)
                {
                    allowedChars = args[i + 1];
                    i++;
                }
            }

            string password = GeneratePassword(length, allowedChars);
            Console.WriteLine($"Generated password: {password}");
        }

        static string GeneratePassword(int length, string allowedChars)
        {
            var random = new Random();
            var password = new StringBuilder();

            for (int i = 0; i < length; i++)
            {
                int index = random.Next(allowedChars.Length);
                char c = allowedChars[index];
                password.Append(c);
            }

            return password.ToString();
        }
    }
}
```

This application takes command-line parameters for length and allowed characters. You can run the application using the command line as follows:

- To generate a password with the default length (10) and characters:

  ```
  dotnet run
  ```

- To generate a password with a specified length (e.g., 12):

  ```
  dotnet run -l 12
  ```

- To generate a password with specified allowed characters (e.g., lowercase and digits only):

  ```
  dotnet run -c "abcdefghijklmnopqrstuvwxyz0123456789"
  ```

You can combine these parameters as needed, for example:

```
dotnet run -l 15 -c "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
```

This command generates a 15-character password with uppercase letters and digits only.
