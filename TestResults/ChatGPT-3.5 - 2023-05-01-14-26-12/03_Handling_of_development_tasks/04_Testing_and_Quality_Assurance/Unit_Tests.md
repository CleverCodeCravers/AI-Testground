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

Sure, here are some unit tests for the `IfStatementDotsRule` class:

```csharp
[TestFixture]
public class IfStatementDotsRuleTests
{
    [Test]
    public void Validate_WithValidIfStatements_ReturnsEmptyArray()
    {
        // Arrange
        var rule = new IfStatementDotsRule();
        var fileContent = @"
            using System;

            namespace Example
            {
                class Program
                {
                    static void Main(string[] args)
                    {
                        int a = 1, b = 2;
                        if (a == b)
                        {
                            Console.WriteLine(""a equals b"");
                        }
                    }
                }
            }";

        // Act
        var result = rule.Validate("file.cs", fileContent);

        // Assert
        Assert.IsEmpty(result);
    }

    [Test]
    public void Validate_WithInvalidIfStatements_ReturnsValidationMessages()
    {
        // Arrange
        var rule = new IfStatementDotsRule();
        var fileContent = @"
            using System;

            namespace Example
            {
                class Program
                {
                    static void Main(string[] args)
                    {
                        string url = ""http://example.com"";
                        if (url.Contains(""example.com""))
                        {
                            Console.WriteLine(""The URL contains 'example.com'"");
                        }
                    }
                }
            }";

        // Act
        var result = rule.Validate("file.cs", fileContent);

        // Assert
        Assert.IsNotEmpty(result);
        Assert.AreEqual(1, result.Length);
        Assert.AreEqual("If Statement Dots Rule", result[0].RuleName);
        Assert.AreEqual("An if statement in the file 'file.cs':9 contains expressions with more than two dots, which is not allowed.", result[0].Message);
    }
}
```

In these tests, we have two test methods:

- `Validate_WithValidIfStatements_ReturnsEmptyArray`: This tests the `IfStatementDotsRule` class with valid input where the `if` statement does not contain expressions with more than two dots. This test should pass, meaning the `Validate` method should return an empty array of `ValidationMessage` objects.
- `Validate_WithInvalidIfStatements_ReturnsValidationMessages`: This tests the `IfStatementDotsRule` class with invalid input where the `if` statement contains an expression with more than two dots. This test should pass, meaning the `Validate` method should return a non-empty array of `ValidationMessage` objects containing a single message with the expected rule name and message.
