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

Here is a demo page using Knockout.js:

**HTML:**

```html
<div data-bind="foreach: calculations">
    <h2>Result:</h2>
    <p>Users per month per user: <span data-bind="text: usersPerMonthPerUser"></span></p>
    <p>User count: <span data-bind="text: userCount"></span></p>
    <p>Estimated benefit: <span data-bind="text: estimatedBenefit"></span></p>
</div>

<select data-bind="options: usersPerMonthPerOptions, value: usersPerMonthPerUser">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select>

<select data-bind="options: userCountOptions, value: userCount">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select>

<select data-bind="options: estimatedBenefitOptions, value: estimatedBenefit">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value"5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
```
