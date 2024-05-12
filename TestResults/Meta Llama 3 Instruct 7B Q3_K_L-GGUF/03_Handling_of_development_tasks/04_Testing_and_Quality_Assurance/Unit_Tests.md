# Unit Tests

## Prompt 1

```
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Syntax;

namespace cleaner.Domain.Rules;

public class IfStatementDotsRule : IRule
{
    public string Id => GetType().Name;
    public string Name => "If Statement Dots Rule";
    public string ShortDescription => "Detects if statements with expressions containing more than two dots";
    public string LongDescription => "This rule checks if an if statement contains expressions with more than two dots and raises a warning if it does.";

    public ValidationMessage[] Validate(string filePath, string fileContent)
    {
        var messages = new List<ValidationMessage>();

        SyntaxTree tree = CSharpSyntaxTree.ParseText(fileContent);
        var root = tree.GetCompilationUnitRoot();

        var ifStatements = root.DescendantNodes()
            .OfType<IfStatementSyntax>()
            .Where(IfStatementContainsTooManyDots)
            .ToArray();

        foreach (var ifStatement in ifStatements)
        {
            FileLinePositionSpan span = ifStatement.SyntaxTree.GetLineSpan(ifStatement.Span);
            int lineNumber = span.StartLinePosition.Line + 1;

            var message = new ValidationMessage(
                Id,
                Name,
                $"An if statement in the file '{filePath}':{lineNumber} contains expressions with more than two dots, which is not allowed."
            );
            messages.Add(message);
        }

        return messages.ToArray();
    }

    private bool IfStatementContainsTooManyDots(IfStatementSyntax ifStatement)
    {
        var nodes = ifStatement.Condition.DescendantNodesAndSelf();
        return nodes.Any(n => n.ToString().Count(c => c == '.') > 2);
    }
}
```

Given this class can you write me some unit tests for it?

### Result

Here are some unit tests for the `IfStatementDotsRule` class:

```csharp
[TestClass]
public class IfStatementDotsRuleTests
{
    [TestMethod]
    public void TestValidIfStatement()
    {
        // Arrange
        string filePath = "path/to/file.cs";
        string fileContent = @"
using System;

class Program
{
    public static void Main(string[] args)
    {
        int x = 5;
        if (x > 3) Console.WriteLine("x is greater than 3");
    }
}
";

        // Act
        ValidationMessage[] messages = new IfStatementDotsRule().Validate(filePath, fileContent);

        // Assert
        Assert.IsNull(messages);
    }

    [TestMethod]
    public void TestInvalidIfStatement()
    {
        // Arrange
        string filePath = "path/to/file.cs";
        string fileContent = @"
using System;

class Program
{
    public static void Main(string[] args)
    {
        int x = 5;
        if (x > 3 && foo.bar.baz) Console.WriteLine("x is greater than 3");
    }
}
";

        // Act
        ValidationMessage[] messages = new IfStatementDotsRule().Validate(filePath, fileContent);

        // Assert
        Assert.IsNotNull(messages);
        Assert.AreEqual(1, messages.Length);
        string message = messages[0].Message;
        Assert.IsTrue(message.Contains("An if statement in the file 'path/to/file.cs':1 contains expressions with more than two dots, which is not allowed."));
    }

    [TestMethod]
    public void TestMultipleInvalidIfStatements()
    {
        // Arrange
        string filePath = "path/to/file.cs";
        string fileContent = @"
using System;

class Program
{
    public static void Main(string[] args)
    {
        int x = 5;
        if (x > 3 && foo.bar.baz) Console.WriteLine("x is greater than 3");
        if (x > 4 && foo.bar.baz.qux) Console.WriteLine("x is greater than 4");
    }
}
";

        // Act
        ValidationMessage[] messages = new IfStatementDotsRule().Validate(filePath, fileContent);

        // Assert
        Assert.IsNotNull(messages);
        Assert.AreEqual(2, messages.Length);
        string message1 = messages[0].Message;
        string message2 = messages[1].Message;
        Assert.IsTrue(message1.Contains("An if statement in the file 'path/to/file.cs':1 contains expressions with more than two dots, which is not allowed."));
        Assert.IsTrue(message2.Contains("An if statement in the file 'path/to/file.cs':3 contains expressions with more than two dots, which is not allowed."));
    }
}
```

These tests cover the following scenarios:

- A valid `if` statement with no excessive dots
- An invalid `if` statement with an expression containing more than two dots
- Multiple invalid `if` statements with expressions containing more than two dots

Note that these tests assume that the file path is "path/to/file.cs" and that the file content is provided as a string. You may need to adjust this depending on your specific requirements. Additionally, you can add more test cases to cover other scenarios or edge cases.
