# CSS Test

## Prompt 1

Can you build me the CSS for a basic grid layout with 12 columns as well as an example in HTML that uses this layout.

### Result

Here is an example of a basic grid layout with 12 columns using CSS:

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
}

.grid-item {
  background-color: #eee;
  padding: 20px;
}
```

And here is an example of how you can use this layout in HTML:

```html
<div class="grid-container">
  <div class="grid-item">Cell 1</div>
  <div class="grid-item">Cell 2</div>
  <div class="grid-item">Cell 3</div>
  <div class="grid-item">Cell 4</div>
  <div class="grid-item">Cell 5</div>
  <div class="grid-item">Cell 6</div>
  <div class="grid-item">Cell 7</div>
  <div class="grid-item">Cell 8</div>
  <div class="grid-item">Cell 9</div>
  <div class="grid-item">Cell 10</div>
  <div class="grid-item">Cell 11</div>
  <div class="grid-item">Cell 12</div>
</div>
```

In this example, we define a container element with the class `grid-container` and give it a display property of `grid`. We also set the `grid-template-columns` property to `repeat(12, 1fr)`, which tells the grid to divide itself into 12 columns of equal width.

We then add 12 child elements inside the container, each with a class of `grid-item`. These elements will automatically be laid out within the grid according to the defined column structure.

You can adjust the size and spacing of the grid items by adding styles to the `.grid-item` selector. For example:

```css
.grid-item {
  width: 100px;
  height: 150px;
  margin: 10px;
}
```

This will make each grid item a fixed size and add some margin between them.

Note that this is just a basic example, and you can customize the grid layout to fit your specific needs. You can
