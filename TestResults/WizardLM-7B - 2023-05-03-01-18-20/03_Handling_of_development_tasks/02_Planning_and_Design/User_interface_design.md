# Creating subtasks for tasks / Check included content

## Prompt 1

We would like to implement a form that allows the user to enter contact information as well as a list of items he wishes to purchase.

At the end there should be a sum.

Can you propose a UI-Design for this purpose?

### Validation

### Result

Sure, here's a possible UI design for the form you described:

1. Start with a header section that includes the title of the form and some instructions on how to fill it out.
2. Below the header, create a section for the user's contact information, including a name field, an email field, and a phone number field.
3. Below the contact information section, create a section for the user's shopping list. This could be a multi-line text field or a series of checkboxes or radio buttons, depending on the type of items the user wants to purchase.
4. Below the shopping list section, create a section for the total sum of the items the user wants to purchase. This could be a simple text field or a calculator widget, depending on the complexity of the calculations involved.
5. Finally, add a submit button at the bottom of the form to allow the user to submit his data.
6. Make sure the form is easy to read and navigate, with clear labels and instructions for each field. Use appropriate input types (e.g. text for names and email addresses, numbers for phone numbers and item prices) and consistent formatting throughout.
7. Consider adding error messages or tooltips to help the user fill out the form correctly and avoid errors.
8. Make sure the form is responsive and looks good on different devices and screen sizes.
   I hope this helps! Let me know if you have any further questions or if you need any additional assistance.

## Prompt 2

We would like to implement a form that allows the user to enter contact information as well as a list of items he wishes to purchase.

At the end there should be a sum.

Can you draw us a mockup e.g. in svg?

### Validation

### Result

Sure, here's a mockup of the form in SVG format:

```
<svg width="800" height="600">
  <rect x="0" y="0" width="800" height="600" fill="#f2f2f2"/>
  <rect x="10" y="10" width="700" height="500" fill="#ffffff"/>
  <text x="300" y="425" font-size="24" fill="#000000" text-anchor="middle">Form Name</text>
  <text x="300" y="525" font-size="16" fill="#000000" text-anchor="middle">Contact Information</text>
  <text x="300" y="625" font-size="16" fill="#000000" text-anchor="middle">Items to Purchase</text>
  <text x="300" y="725" font-size="16" fill="#000000" text-anchor="middle">Total Price</text>
  <rect x="400" y="10" width="300" height="200" fill="#ffffff"/>
  <rect x="400" y="10" width="300" height="200" fill="#ffffff"/>
  <text x="450" y="125" font-size="24" fill="#000000" text-anchor="middle">Item 1</text>
  <text x="450" y="155" font-size="16" fill="#000000" text-anchor="middle">Price: $10.00</text>
  <rect x="450" y="175" width="200" height="50" fill="#ffffff"/>
  <text x="450" y="225" font-size="24" fill="#000000" text-anchor="middle">Item 2</text>
  <text x="450" y="275" font-size="16" fill="#000000" text-anchor="middle">Price: $15.00</text>
  <rect x="450" y="305" width="200" height="50" fill="#ffffff"/>
  <text x="450" y="355" font-size="24" fill="#000000" text-anchor="middle">Item 3</text>
  <text x="450" y="405" font-size="16" fill="#000000" text-anchor="middle">Price: $20.00</text>
  <rect x="450" y="455" width="200" height="50" fill="#ffffff"/>
  <text x="450" y="505" font-size="24" fill="#000000" text-anchor="middle">Total Price: $55.00</text>
</svg>
```

You can customize the text and shapes according to your needs.
