# CSS Test

## Prompt 1

Can you build me the CSS for a basic grid layout with 12 columns as well as an example in HTML that uses this layout.

### Result

Here is a basic CSS grid layout with 12 columns and an example HTML file that demonstrates how to use the layout.

CSS file (grid.css):

```css
.container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-gap: 10px;
  max-width: 1200px;
  margin: 0 auto;
}

[class*="col-"] {
  background-color: #f1f1f1;
  padding: 10px;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

.col-1 {
  grid-column: span 1;
}
.col-2 {
  grid-column: span 2;
}
.col-3 {
  grid-column: span 3;
}
.col-4 {
  grid-column: span 4;
}
.col-5 {
  grid-column: span 5;
}
.col-6 {
  grid-column: span 6;
}
.col-7 {
  grid-column: span 7;
}
.col-8 {
  grid-column: span 8;
}
.col-9 {
  grid-column: span 9;
}
.col-10 {
  grid-column: span 10;
}
.col-11 {
  grid-column: span 11;
}
.col-12 {
  grid-column: span 12;
}
```

HTML file (index.html):

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>12 Column Grid Layout Example</title>
    <link rel="stylesheet" href="grid.css" />
  </head>
  <body>
    <div class="container">
      <div class="col-6">Column 1 (span 6)</div>
      <div class="col-6">Column 2 (span 6)</div>
      <div class="col-3">Column 3 (span 3)</div>
      <div class="col-3">Column 4 (span 3)</div>
      <div class="col-3">Column 5 (span 3)</div>
      <div class="col-3">Column 6 (span 3)</div>
      <div class="col-4">Column 7 (span 4)</div>
      <div class="col-4">Column 8 (span 4)</div>
      <div class="col-4">Column 9 (span 4)</div>
      <div class="col-12">Column 10 (span 12)</div>
    </div>
  </body>
</html>
```

To see the example in action, save the CSS code as `grid.css` and the HTML code as `index.html` in the same folder. Then open the `index.html` file in a web browser. The example demonstrates a responsive grid layout with various column widths.
