# CSS Test

## Prompt 1

Can you build me the CSS for a basic grid layout with 12 columns as well as an example in HTML that uses this layout.

### Result

Sure, here's an example of a basic grid layout with 12 columns using CSS:

```css
.row::after {
  content: "";
  clear: both;
  display: table;
}

.col {
  float: left;
  box-sizing: border-box;
}

.col-1 {
  width: 8.33%;
}

.col-2 {
  width: 16.66%;
}

.col-3 {
  width: 25%;
}

.col-4 {
  width: 33.33%;
}

.col-5 {
  width: 41.66%;
}

.col-6 {
  width: 50%;
}

.col-7 {
  width: 58.33%;
}

.col-8 {
  width: 66.66%;
}

.col-9 {
  width: 75%;
}

.col-10 {
  width: 83.33%;
}

.col-11 {
  width: 91.66%;
}

.col-12 {
  width: 100%;
}
```

And here's an example of how you can use this grid in HTML:

```html
<div class="row">
  <div class="col col-6">Column 1</div>
  <div class="col col-6">Column 2</div>
</div>

<div class="row">
  <div class="col col-4">Column 3</div>
  <div class="col col-4">Column 4</div>
  <div class="col col-4">Column 5</div>
</div>

<div class="row">
  <div class="col col-3">Column 6</div>
  <div class="col col-3">Column 7</div>
  <div class="col col-3">Column 8</div>
  <div class="col col-3">Column 9</div>
</div>

<div class="row">
  <div class="col col-12">Column 10</div>
</div>
```

In this example, the first row has two columns, the second row has three columns, the third row has four columns, and the fourth row has one column that spans the full width of the grid.
