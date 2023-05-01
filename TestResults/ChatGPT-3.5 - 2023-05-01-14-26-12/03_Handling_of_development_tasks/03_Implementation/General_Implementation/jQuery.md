# jQuery

## Prompt 1

Can you generate me a jquery ui based kanban board with task drag support?

### Result

Sure, here's an example of a jQuery UI-based kanban board with task drag support:

HTML:

```html
<div class="kanban-board">
  <div class="kanban-column">
    <h2>To Do</h2>
    <ul class="kanban-list" id="todo-list">
      <li class="kanban-task" data-id="task-1">
        <div class="kanban-task-header">
          <span class="kanban-task-title">Task 1</span>
          <span class="kanban-task-remove">&times;</span>
        </div>
        <div class="kanban-task-body">
          <p>Task description goes here.</p>
        </div>
      </li>
      <li class="kanban-task" data-id="task-2">
        <div class="kanban-task-header">
          <span class="kanban-task-title">Task 2</span>
          <span class="kanban-task-remove">&times;</span>
        </div>
        <div class="kanban-task-body">
          <p>Task description goes here.</p>
        </div>
      </li>
      <li class="kanban-task" data-id="task-3">
        <div class="kanban-task-header">
          <span class="kanban-task-title">Task 3</span>
          <span class="kanban-task-remove">&times;</span>
        </div>
        <div class="kanban-task-body">
          <p>Task description goes here.</p>
        </div>
      </li>
    </ul>
    <form class="kanban-add-form">
      <input type="text" name="task" placeholder="Add task..." />
      <button type="submit">Add</button>
    </form>
  </div>
  <div class="kanban-column">
    <h2>In Progress</h2>
    <ul class="kanban-list" id="in-progress-list">
      <!-- tasks in progress go here -->
    </ul>
  </div>
  <div class="kanban-column">
    <h2>Done</h2>
    <ul class="kanban-list" id="done-list">
      <!-- completed tasks go here -->
    </ul>
  </div>
</div>
```

CSS:

```css
.kanban-board {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}

.kanban-column {
    width: 30%;
    margin: 0 2%;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 1px 2px rgba(0,0,0,0.15);
    padding: 1em;
}

.kanban-column h2 {
    font-size: 1.2em;
    margin-bottom: 0.5em;
}

.kanban-list {
    list-style: none;
    padding: 0;
    margin: 0;
}

.kanban-task {
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-bottom: 0.5em;
    padding: 0.5em;
}

.kanban-task-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 0.5em;
}

.kanban-task-title {
    font-size: 1.1em;
    font-weight: bold;
}

.kanban-task-remove {
    font-size: 1.5
```
