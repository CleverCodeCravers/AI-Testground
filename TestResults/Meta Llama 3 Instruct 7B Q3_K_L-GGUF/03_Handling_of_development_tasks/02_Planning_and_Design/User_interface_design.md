# Creating subtasks for tasks / Check included content

## Prompt 1

We would like to implement a form that allows the user to enter contact information as well as a list of items he wishes to purchase.

At the end there should be a sum.

Can you propose a UI-Design for this purpose?

### Validation

### Result

Here's a proposed UI design for your "Contact and Order" form:

**Form Structure:**

1. **Header**: Company logo, title, and possibly a brief description of what users can expect from the form.
2. **Contact Information Section**: Fields for user input:
   - Name
   - Email
   - Phone Number
   - Address (with optional fields for city, state, zip)
3. **Order Items Section**: List of items with input fields for:
   - Item name/description
   - Quantity
   - Price (optional: can be pre-populated or allow user to enter custom price)
4. **Total Sum Section**: Displays the calculated total sum of all order items.
5. **Submit Button**: A prominent call-to-action button

## Prompt 2

We would like to implement a form that allows the user to enter contact information as well as a list of items he wishes to purchase.

At the end there should be a sum.

Can you draw us a mockup e.g. in svg?

### Validation

### Result

Here's a simple SVG mockup for your "Contact and Order" form:

```svg
<svg width="400" height="600">
  <!-- Header -->
  <rect x="10" y="10" width="380" height="50" fill="#f0f0f0" rx="5" />
  <text x="20" y="35" font-size="18" font-family="Arial">Contact and Order Form</text>

  <!-- Contact Information Section -->
  <rect x="10" y="60" width="380" height="120" fill="#f0f0f0" rx="5" />
  <label x="20" y="70" style="font-size:14px;">Name:</label>
  <input type="text" x="100" y="70" width="250" height="25" />
  <br/>
  <label x="20" y="90" style="font-size:14px;">Email:</label>
  <input type="email" x="100" y="90" width="250" height="25" />
  <br/>
  <label x="20" y="110" style="font-size:14px;">Phone Number:</label>
  <input type="tel" x="100" y="110" width="250" height="25" />

  <!-- Order Items Section -->
  <rect x="10" y="180" width="380" height="240" fill="#f0f0f0" rx="5" />
  <label x="20" y="190" style="font-size:14px;">Item</label>
  <input type="text" x="120" y="190" width="150" height="25" placeholder="Item name/description"/>
  <label x="280" y="190" style="font-size:14px;">Quantity:</label>
  <input type="number" x="300" y="190" width="50" height="25" />
  <br/>
  <button x="20" y="220" width="100" height="30">Add Item</button>

  <!-- Total Sum Section -->
  <rect x="10" y="420" width="380" height="40" fill="#f0f0f0" rx="5" />
  <label x="20" y="430" style="font-size:18px; font-weight:bold;">Total:</label>
  <text x="100" y="430" font-size="18">€0.00</text>

  <!-- Submit Button -->
  <rect x="10" y="460" width="380" height="40" fill="#4CAF50" rx="5" />
  <text x="150" y="470" font-size="18" font-weight="bold" text-anchor="middle">Submit</text>
</svg>
```

Please note that this is a simple representation and might need adjustments to fit your specific requirements. You can customize the design, add more fields or features as per your needs.

This mockup includes:

- Contact Information Section with labels and input fields for name, email, and phone number
- Order Items Section with a list of items to be added (item name/description, quantity) and an "Add Item" button
- Total Sum Section displaying the calculated total sum
- Submit Button

This design should give you a basic idea of how your form could look. You can customize it further to fit your specific requirements and needs.
