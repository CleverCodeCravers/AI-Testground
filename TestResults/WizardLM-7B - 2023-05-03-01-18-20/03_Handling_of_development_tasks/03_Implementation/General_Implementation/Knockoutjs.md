# Knockout.js

## Prompt 1

Please write a demo page for knockout that has:

- a dropdown with 10 elements for uses per month per user
- a dropdown with 10 elements for user count
- and a dropdown for estimated benefit (time or money)

- All dropdowns should return values of 1..10.
- The dropdown elements contain an exponential scale.
- At the end of the page there should be a result. It is the selected values (1..10) of each dropdown multiplied with all the others.

### Result

```html
<!DOCTYPE html>
<html>
  <head>
    <title>Knockout Examples</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.4.2/knockout-min.js"></script>
  </head>
  <body>
    <div data-bind="foreach: users">
      <div>
        <label>User Count:</label>
        <select data-bind="value: userCount, options: numbers"></select>
      </div>
      <div>
        <label>Uses per Month:</label>
        <select data-bind="value: usesPerMonth, options: numbers"></select>
      </div>
      <div>
        <label>Estimated Benefit:</label>
        <select data-bind="value: estimatedBenefit, options: numbers"></select>
      </div>
    </div>
    <button data-bind="click: calculateResult">Calculate Result</button>
    <p data-bind="text: result"></p>
    <script>
      function UsersViewModel() {
        this.users = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        this.userCount = 1;
        this.usesPerMonth = 1;
        this.estimatedBenefit = 1;
      }
      ko.applyBindings(new UsersViewModel());
      function calculateResult() {
        var result = 1;
        for (var i = 0; i < this.users.length; i++) {
          result *= this.users[i];
        }
        for (var i = 0; i < this.userCount.options.length; i++) {
          result *= this.userCount.options[i].value;
        }
        for (var i = 0; i < this.usesPerMonth.options.length; i++) {
          result *= this.usesPerMonth.options[i].value;
        }
        this.resultText(result);
      }
    </script>
  </body>
</html>
```
