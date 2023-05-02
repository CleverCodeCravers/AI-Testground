# Python

## Prompt 1

Please write me a small python script that will use gpt3.5 to answer a question.

### Result

```python
import openai
openai.api_key = "YOUR_API_KEY"

question = "What is the capital of France?"

response = openai.Completion.create(
engine="davinci-codex",
prompt=f"{question} What is the capital of France?",
max_tokens=50,
n=1,
stop=None,
temperature=0.5,
)

print(response.choices[0].text)
```

# Output: Paris is the capital of France.
