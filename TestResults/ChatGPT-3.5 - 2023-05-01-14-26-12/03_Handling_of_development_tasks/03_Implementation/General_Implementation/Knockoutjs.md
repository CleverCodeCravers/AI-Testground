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

Sure, here's an example HTML page using Knockout.js to achieve the desired functionality:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Knockout.js Demo</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.5.2/knockout-min.js"></script>
  </head>
  <body>
    <div>
      <label for="uses">Uses per Month per User:</label>
      <select
        id="uses"
        data-bind="options: usesValues, value: selectedUses"
      ></select>
    </div>
    <div>
      <label for="users">Number of Users:</label>
      <select
        id="users"
        data-bind="options: usersValues, value: selectedUsers"
      ></select>
    </div>
    <div>
      <label for="benefit">Estimated Benefit:</label>
      <select
        id="benefit"
        data-bind="options: benefitValues, value: selectedBenefit"
      ></select>
    </div>
    <div>
      <p data-bind="text: 'Result: ' + result()"></p>
    </div>

    <script>
      var viewModel = function () {
        var self = this;

        self.usesValues = ko.observableArray([
          1, 2, 4, 8, 16, 32, 64, 128, 256, 512,
        ]);
        self.selectedUses = ko.observable(1);

        self.usersValues = ko.observableArray([
          1, 2, 4, 8, 16, 32, 64, 128, 256, 512,
        ]);
        self.selectedUsers = ko.observable(1);

        self.benefitValues = ko.observableArray([
          1, 2, 4, 8, 16, 32, 64, 128, 256, 512,
        ]);
        self.selectedBenefit = ko.observable(1);

        self.result = ko.computed(function () {
          return (
            self.selectedUses() * self.selectedUsers() * self.selectedBenefit()
          );
        });
      };

      ko.applyBindings(new viewModel());
    </script>
  </body>
</html>
```

In this example, the `viewModel` function defines the values and bindings for the three dropdowns and the result display. The `ko.computed` function computes the result based on the selected values of the three dropdowns, and the `ko.applyBindings` function binds the view model to the HTML.
