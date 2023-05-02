# CSS Test

## Prompt 1

Can you build me the CSS for a basic grid layout with 12 columns as well as an example in HTML that uses this layout.

### Result

Sure, here's an example of CSS for a basic grid layout with 12 columns:

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-template-rows: repeat(3, 1fr);
  grid-gap: 10px;
}
.grid-item {
  grid-column: span 12;
  grid-row: span 3;
  width: 33.33%;
  height: 100%;
  margin: 0 10px;
}
```

And here's an example of HTML that uses this layout:

```html
<div class="grid-container">
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col-3"></div>
  </div>
  <div class="grid-item">
    <div class="col-1"></div>
    <div class="col-2"></div>
    <div class="col
```
