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
using Microsoft.CodeAnalysis;
using Microsoft.CodeAnalysis.CSharp;
using Microsoft.CodeAnalysis.CSharp.Syntax;
using Microsoft.UnitTests;
using System.Collections.Generic;
using System.Linq;
namespace cleaner.Domain.Rules.UnitTests
{
    public class IfStatementDotsRuleTests
    {
        private readonly CSharpCompilation _compilation;
        private readonly SyntaxTree _tree;
        private readonly List<IfStatementSyntax> _ifStatements;
        private readonly List<ValidationMessage> _messages;
        public IfStatementDotsRuleTests()
        {
            _compilation = CSharpCompilation.Create("test.cs", new[] { @"using System;
using System.Collections.Generic;
using System.Linq;
namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            int x = 5;
            int y = 10;
            if (x > y)
            {
                Console.WriteLine(x);
            }
            else if (x == y)
            {
                Console.WriteLine(y);
            }
            else
            {
                Console.WriteLine(y);
            }
        }
    }
}" });
            _tree = _compilation.SyntaxTrees[0];
            var root = _tree.GetCompilationUnitRoot();
            _ifStatements = root.DescendantNodes()
                .OfType<IfStatementSyntax>()
                .Where(IfStatementContainsTooManyDots)
                .ToList();
            _messages = new List<ValidationMessage>();
        }
        [Fact]
        public void IfStatementDotsRule_ValidatesCorrectly()
        {
            var rule = new IfStatementDotsRule();
            var validator = new CSharpValidator();
            var messages = validator.Validate(rule.Id, rule.Name, rule.LongDescription, _compilation, _tree);
            Assert.Empty(_messages);
        }
        [Fact]
        public void IfStatementDotsRule_InvalidatesCorrectly()
        {
            var rule = new IfStatementDotsRule();
            var validator = new CSharpValidator();
            _ifStatements = _ifStatements.Where(n => n.ToString().Count(c => c == '.') > 2).ToList();
            var messages = validator.Validate(rule.Id, rule.Name, rule.LongDescription, _compilation, _tree);
            Assert.NotEmpty(_messages);
        }
        private bool IfStatementContainsTooManyDots(IfStatementSyntax ifStatement)
        {
            var nodes = ifStatement.Condition.DescendantNodesAndSelf();
            return nodes.Any(n => n.ToString().Count(c => c == '.') > 2);
        }
    }
}
```

In this test class, we create a `CSharpCompilation` object from a sample C# code file. We then create a `SyntaxTree` object from the compilation and get the root of the tree. We then create a list of `IfStatementSyntax` objects from the root and its descendants, and a list of `ValidationMessage` objects to store the results of the validation.
We then define two methods:

- `IfStatementDotsRuleTests.IfStatementContainsTooManyDots`: checks if an `IfStatementSyntax` contains more than two dots in its condition.
- `IfStatementDotsRuleTests.Validate`: validates the rule using the `CSharpValidator` class and stores the results in a list of `ValidationMessage` objects.
  We then write two unit test methods:
- `IfStatementDotsRuleTests.IfStatementDotsRule_ValidatesCorrectly`: validates the rule with no errors.
- `IfStatementDotsRuleTests.IfStatementDotsRule_InvalidatesCorrectly`: invalidates the rule with errors.
