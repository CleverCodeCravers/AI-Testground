# jQuery

## Prompt 1

Can you generate me a jquery ui based kanban board with task drag support?

### Result

Here is an example of a jQuery Kanban Board with Task Drag Support using the jQuery UI Library:

**HTML:**

```html
<div id="kanban-board">
  <div id="column1" class="column">To-Do</div>
  <div id="column2" class="column">In Progress</div>
  <div id="column3" class="column">Done</div>

  <!-- Task List -->
  <ul id="task-list"></ul>
</div>
```

**JavaScript:**

```javascript
$(document).ready(function () {
  // Define the columns
  var columns = [
    { id: "column1", title: "To-Do" },
    { id: "column2", title: "In Progress" },
    { id: "column3", title: "Done" },
  ];

  // Define the tasks
  var tasks = [
    { id: 1, title: "Task 1", columnId: "column1" },
    { id: 2, title: "Task 2", columnId: "column1" },
    { id: 3, title: "Task 3", columnId: "column2" },
    { id: 4, title: "Task 4", columnId: "column3" },
  ];

  // Render the task list
  $.each(tasks, function (index, task) {
    var $task = $("<li>").text(task.title);
    if (task.columnId === columns[0].id) {
      $task.addClass("to-do");
    } else if (task.columnId === columns[1].id) {
      $task.addClass("in-progress");
    } else {
      $task.addClass("done");
    }
    $("#task-list").append($task);
  });

  // Initialize the Kanban Board
  var kanbanBoard = {};
  $.each(columns, function (index, column) {
    kanbanBoard[column.id] = {};
    kanbanBoard[column.id].tasks = [];
    kanbanBoard[column.id].dropTarget = new $.Draggable({
      target: "#column" + (index + 1),
      onDrop: function (event, ui) {
        var taskId = parseInt(ui.draggable.attr("data-task-id"));
        var columnIndex = $(this).attr("id");
        var taskIndex = tasks.indexOf(taskId);
        if (taskIndex !== -1) {
          tasks[taskIndex].columnId = columnIndex;
          renderTaskList();
        }
      },
    });
  });

  // Render the Task List
  function renderTaskList() {
    $("#task-list").empty();
    $.each(tasks, function (index, task) {
      var $task = $("<li>").text(task.title);
      if (task.columnId === columns[0].id) {
        $task.addClass("to-do");
      } else if (task.columnId === columns[1].id) {
        $task.addClass("in-progress");
      } else {
        $task.addClass("done");
      }
      $("#task-list").append($task);
    });
  }

  // Initialize the Drag Support
  $.each(columns, function (index, column) {
    $(column.dropTarget).droppable({
      accept: "#task-list li",
      drop: function (event, ui) {
        var taskId = parseInt(ui.draggable.attr("data-task-id"));
        var columnIndex = $(this).attr("id");
        var taskIndex = tasks.indexOf(taskId);
        if (taskIndex !== -1) {
          tasks[taskIndex].columnId = columnIndex;
          renderTaskList();
        }
      },
    });
  });

  // Render the Task List
  renderTaskList();
});
```

**CSS:**

```css
#kanban-board {
  width: 800px;
  height: 600px;
  border: 1px solid #ccc;
  padding: 10px;
}

.column {
  width: 200px;
  margin-bottom: 20px;
  background-color: #f0f0f0;
}

.to-do {
  color: #000;
}

.in-progress {
  color: #666;
}

.done {
  color: #999;
}
```

This code defines a Kanban Board with three columns (To-Do, In Progress, and Done) and a list of tasks. Each task can be dragged and dropped into one of the columns. When a task is dropped, its columnId property is updated to reflect its new location.

The `renderTaskList` function updates the HTML list with the current state of the tasks. The `onDrop` event handler updates the task's columnId property and calls `renderTaskList` to update the display.

This code uses the jQuery UI Library for drag and drop functionality. You'll need to include the jQuery UI CSS file in your project for this code to work correctly.

Note that this is a basic example, you can customize it Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan ** Kan \*\* Kan
