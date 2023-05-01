# Unit Tests

## Prompt 1

```csharp
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

Yes, here are some sample unit tests using xUnit for the IfStatementDotsRule class:

```csharp
using Xunit;
using static Microsoft.CodeAnalysis.CSharp.SyntaxFactory;

namespace cleaner.Tests
{
    public class IfStatementDotsRuleTests
    {
        [Fact]
        public void TestSimpleIfStatementWithNoExpressionsContainingTwoDots()
        {
            // Arrange
            var testSource = @"
class Program
{
    public static void Main()
    {
        if (!string.IsNullOrEmpty(""Hello World!""))
        {
            Console.WriteLine(""Hello World!"");
        }
    }
}
";
            var syntaxNode = ParseAndAssertValidCode(testSource);

            // Act

            var result = new CleanCodeGenerator().RemoveInvalidCodeFromString(syntaxNode);
            Assert.Equal(testSource, result.Replace("\t", "").Trim());
        }

        private static CompilationUnitSyntax ParseAndAssertValidCode(string source)
        {
            var compilation = CreateCompilation(source, assemblyName: "", references: default);
            Assert.True(compilation.Success, "The compilation failed.");
            return ((CompilationUnitSyntax)compilation.SyntaxTrees[0].GetRoot()).Body;
        }
    }
}

// Using NUnit instead of xUnit

[TestFixture]
public class IfStatementDotsRuleTests
{
    [Test]
    public void TestSimpleIfStatementWithNoExpressionsContainingTwoDots()
    {
        var testSource = @"
class Program
{
    public static void Main()
    {
        if (!string.IsNullOrEmpty(""Hello World!""))
        {
            Console.WriteLine(""Hello World!"");
        }
    }
}
";
        var cleanedCode = RemoveInvalidCodeFromString(testSource);

        Assert.Equals(testSource, cleanedCode);
    }

    public string RemoveInvalidCodeFromString(string source)
    {
        var syntaxNode = CSharpSyntaxParser.ParseFile(new StringReader(source));
        var generator = new CodeGenerator();
        var fieldReference = Expression.Parameter(typeof(object), "")
```
