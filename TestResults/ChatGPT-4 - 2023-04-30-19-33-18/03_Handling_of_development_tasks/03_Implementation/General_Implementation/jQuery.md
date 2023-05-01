# jQuery

## Prompt 1

Can you generate me a jquery ui based kanban board with task drag support?

### Result

Creating a jQuery UI-based Kanban board with task drag support is simple. First, make sure you include the required jQuery, jQuery UI, and CSS dependencies in your HTML file.

Here's an example of an HTML file with a Kanban board:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Kanban Board</title>
    <link
      rel="stylesheet"
      href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"
    />
    <style>
      .kanban-board {
        display: flex;
        gap: 10px;
      }
      .kanban-list {
        flex: 1;
        border: 1px solid #ccc;
        padding: 10px;
        min-height: 300px;
      }
      .kanban-list h3 {
        margin-top: 0;
      }
      .kanban-task {
        background-color: #f1f1f1;
        border: 1px solid #ccc;
        padding: 5px;
        margin-bottom: 5px;
        cursor: move;
      }
    </style>
  </head>
  <body>
    <div class="kanban-board">
      <div class="kanban-list" id="todo">
        <h3>To do</h3>
        <div class="kanban-task">Task 1</div>
        <div class="kanban-task">Task 2</div>
      </div>
      <div class="kanban-list" id="in-progress">
        <h3>In progress</h3>
      </div>
      <div class="kanban-list" id="done">
        <h3>Done</h3>
      </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script>
      $(function () {
        $(".kanban-task").draggable({
          revert: "invalid",
          containment: "document",
          helper: "clone",
          cursor: "move",
        });

        $(".kanban-list").droppable({
          accept: ".kanban-task",
          drop: function (event, ui) {
            var task = ui.helper.clone();
            ui.helper.remove();
            $(this).append(task);
          },
        });
      });
    </script>
  </body>
</html>
```

In this example, we create a simple Kanban board with three columns: "To do", "In progress", and "Done". We use jQuery UI's draggable and droppable interactions to enable task dragging between the columns.

To test the Kanban board, save the HTML content above in a file called `index.html` and open it in your web browser. You should be able to drag tasks between the columns.
