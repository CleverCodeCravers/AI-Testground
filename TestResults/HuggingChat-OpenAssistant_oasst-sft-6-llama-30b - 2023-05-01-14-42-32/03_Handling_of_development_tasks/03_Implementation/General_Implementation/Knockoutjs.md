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

Sure! Here’s a simple demo page using Knockout.js to perform the operations described:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.5.0/knockout-min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style type="text/css">
  .table {
    margin-bottom: 20px;
  }

  #result {
    font-weight: bold;
  }
</style>
<body>
<h1>Knockout JS Demo - User Count & Benefit Calculator</h1>
<p id="info">Welcome to this Knockout JS demonstration.</p>



<select id="users" data-bind="options: { foreach: users }, valueUpdate: 'selectedValue', optionsText: $data, optionsCaption: 'Select...'}">
  <!-- Populate list items here -->
</select>
&nbsp;
<span class="help-block">Number of users expected to use the service within one year.</span>


<select id="usageCount" data-bind="options: { foreach: usageOptions}, valueUpdate: 'selectedValue', optionsText: $data, optionsCaption: 'Select...'}">
  <!-- Populate list items here -->
</select>
&nbsp;
<span class="help-block">Average number of times each user will access the product in one month.</span>


<select id="benefits" data-bind="options: { foreach: benefits }, valueUpdate: 'selectedValue', optionsText: $data, optionsCaption: 'Select...'}">
  <!-- Populate list items here -->
</select>
&nbsp;
<span class="help-block">Type of gain anticipated: Time saved (T), Money Saved ($).</span>


<button id="calcBtn">Calculate</button>


<table id="resultTable" class="table">
  <tbody>
    <!-- Table rows populated dynamically -->
  </tbody>
</table>

<br clear="all"/>


<textarea readonly id="output" style="width: 95%; min-height: 5em;">Your output goes here.</textarea>



<button onclick="submitData();return false;">Submit</button>

<script type="text/javascript">
var viewModel = function () {
  var self = this;
  // Define observable properties
  self.userSelectedOption = ko.observable(null);
  self.usageSelectedOption = ko.observerable(null);
  self.benefitsSelectedOption = ko.observerable(null);
  self.benefitMultiplier = null;

  self.benefitsArray = [1, 2, 3, 4, 5];
  self.usageArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  self.usersArray = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  self.benefitsObservable = ko.computed(function() {
    var beneficialOption = { 'Time': '', 'Money': ''};
    for (var i = 0; i < self.benefitsArray.length; i++) {
      if (self.benefitsSelectedOption === self.benefitsArray[i]) {
        beneficialOption['type'] = self.getBenefitType(self.benefitsSelection());
      }
    };
    return beneficialOption;
  });

  self.getBenefitType = function(option) {
    var optionTypes = ['Time', 'Money'];
    for (var i = 0; i < optionTypes.length; i++) {
      if (option === optionTypes[i]) {
        return optionTypes[i];
      }
    }
    console.log('Invalid selection');
    return '';
  }

  self.calculateResult = function(){
    self.benefitMultiplier = parseInt(self.benefitsSelectedOption) * parseInt(self
```
