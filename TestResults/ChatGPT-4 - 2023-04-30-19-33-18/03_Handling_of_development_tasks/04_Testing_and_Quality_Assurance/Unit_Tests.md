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

### Validation

### Result

To write unit tests for this class, you can use a testing framework like xUnit, NUnit, or MSTest. Here's an example using xUnit:

1. Install the necessary NuGet packages:

   - xunit
   - xunit.runner.visualstudio
   - Microsoft.NET.Test.Sdk
   - Microsoft.CodeAnalysis.CSharp

2. Create a new test class in your test project called `IfStatementDotsRuleTests`.

```csharp
using Xunit;
using cleaner.Domain.Rules;
using System.Linq;
using Microsoft.CodeAnalysis.CSharp;

namespace cleaner.Tests
{
    public class IfStatementDotsRuleTests
    {
        private readonly IfStatementDotsRule _rule;

        public IfStatementDotsRuleTests()
        {
            _rule = new IfStatementDotsRule();
        }

        [Fact]
        public void Test_IfStatementDotsRule_ValidCode_NoWarnings()
        {
            string code = @"
                public class TestClass
                {
                    public void TestMethod()
                    {
                        int a = 0;
                        if (a == 0)
                        {
                            // Do something
                        }
                    }
                }
            ";

            var result = _rule.Validate("TestFile.cs", code);
            Assert.Empty(result);
        }

        [Fact]
        public void Test_IfStatementDotsRule_InvalidCode_Warnings()
        {
            string code = @"
                public class TestClass
                {
                    public void TestMethod()
                    {
                        var obj = new TestClass();
                        if (obj.Property1.Property2.Property3 != null)
                        {
                            // Do something
                        }
                    }
                }
            ";

            var result = _rule.Validate("TestFile.cs", code);
            Assert.Single(result);
            Assert.Equal("If Statement Dots Rule", result.First().RuleName);
        }
    }
}
```

This test class includes two test cases:

1. Test_IfStatementDotsRule_ValidCode_NoWarnings: This test case checks that the rule doesn't raise any warnings when the code is valid and doesn't contain more than two dots in an if statement condition.

2. Test_IfStatementDotsRule_InvalidCode_Warnings: This test case checks that the rule raises a warning when the code contains an if statement condition with more than two dots.

These test cases should provide good coverage for the `IfStatementDotsRule` class. You can add more test cases if needed to cover additional scenarios.
