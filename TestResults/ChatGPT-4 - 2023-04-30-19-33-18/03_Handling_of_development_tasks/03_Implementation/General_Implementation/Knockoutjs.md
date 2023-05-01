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

Here's an example of a demo page using Knockout.js with the specified dropdowns and calculations:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Knockout Demo</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.5.1/knockout-min.js"></script>
  </head>
  <body>
    <h1>Knockout Demo</h1>

    <div data-bind="with: viewModel">
      <label
        >Uses per month per user:
        <select data-bind="options: range, value: usesPerMonth"></select>
      </label>
      <br />
      <label
        >User count:
        <select data-bind="options: range, value: userCount"></select>
      </label>
      <br />
      <label
        >Estimated benefit (time or money):
        <select data-bind="options: range, value: estimatedBenefit"></select>
      </label>
      <br />
      <br />
      <div><strong>Result:</strong> <span data-bind="text: result"></span></div>
    </div>

    <script>
      function ViewModel() {
        this.range = Array.from({ length: 10 }, (_, i) => i + 1);
        this.usesPerMonth = ko.observable(1);
        this.userCount = ko.observable(1);
        this.estimatedBenefit = ko.observable(1);

        this.result = ko.computed(() => {
          const usesPerMonth = parseInt(this.usesPerMonth());
          const userCount = parseInt(this.userCount());
          const estimatedBenefit = parseInt(this.estimatedBenefit());

          return usesPerMonth * userCount * estimatedBenefit;
        });
      }

      const app = {
        viewModel: new ViewModel(),
      };

      ko.applyBindings(app);
    </script>
  </body>
</html>
```

This example creates a simple Knockout.js application with three dropdowns. Each dropdown is bound to an observable property in the ViewModel, and the result is computed using a computed observable based on the selected values of these dropdowns.

Save the content above in a file called `index.html` and open it in your web browser. You can now select values in the dropdowns, and the result will be automatically calculated and displayed on the page.
