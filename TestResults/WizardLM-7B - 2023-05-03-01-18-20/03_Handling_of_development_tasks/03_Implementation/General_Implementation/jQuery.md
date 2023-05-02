# jQuery

## Prompt 1

Can you generate me a jquery ui based kanban board with task drag support?

### Result

Sure, here's an example of how you can generate a jQuery UI-based kanban board with task drag support using HTML, CSS, and JavaScript:
HTML:

```html
<div class="board">
  <div class="column">
    <div class="task">Task 1</div>
    <div class="task">Task 2</div>
    <div class="task">Task 3</div>
  </div>
  <div class="column">
    <div class="task">Task 4</div>
    <div class="task">Task 5</div>
    <div class="task">Task 6</div>
  </div>
  <div class="column">
    <div class="task">Task 7</div>
    <div class="task">Task 8</div>
    <div class="task">Task 9</div>
  </div>
</div>
```

CSS:

```css
.board {
  width: 500px;
  height: 500px;
  border: 1px solid #ccc;
  border-radius: 10px;
  overflow: hidden;
}
.column {
  width: 100px;
  height: 100px;
  margin-right: 20px;
  position: relative;
}
.task {
  width: 80px;
  height: 80px;
  background-color: #fff;
  border-radius: 50%;
  position: absolute;
  z-index: 1;
  cursor: move;
}
```

JavaScript:

```js
$(document).ready(function () {
  $(".board").draggable({
    revert: true,
  });

  $(".column").droppable({
    drop: function (event, ui) {
      var task = ui.draggable;
      var column = $(this);
      var position = task.position();

      column.append(task);
      task.css("left", position.left);
      task.css("top", position.top);
    },
  });
});
```

This code creates a kanban board with three columns and nine tasks, and allows users to drag tasks from one column to another. The `draggable` and `droppable` plugins are used to add drag support and drop functionality to the board. When a task is dragged over a column, it is appended to that column and positioned at its current top and left coordinates.
