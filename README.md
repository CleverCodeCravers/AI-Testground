# AI-Testground

This repository contains a list of questions we want to ask AIs to see how they can support us.

## Software Development Process overview

This process overview lists all the things that happen during the development process.
So we can have a look at it and feel inspired.

### 1. Task arrival

- The task arrives, probably as an email.
- The task is added to the Kanban board using a PowerShell script.
  - The duration of the task is estimated based on the subject.
  - The email is extracted, added as an attachment, and the last main section of the email is included as a description.
  - The task is added to a suitable column based on rules.
  - Classification of the task as support/bug/feature or internal development.

Improvement ideas for AI:

- Rewriting incoming emails
  - The subject of incoming emails is often not in line with the content, making it difficult to get an overview in the Kanban board. Create a new, appropriate subject?
  - Due to the inaccuracy of the subject, our task duration prediction is negatively impacted (can AI contribute here? e.g., by properly formulating the subject)
- Improving tasks
  - If AI can choose a suitable subject for tasks, the Kanban board overview will improve.
  - Check in the accumulating tasks if we already have a similar task from someone else?
  - Automatically create subtasks for the tasks.
  - Generate a standardized task description (Where is the problem? What exactly is the problem? Which customer does the system affect?)
  - Check if all important information is included in the content.

#### Handling of support tasks

Support tasks can have a very high variance, but there are also the usual suspects for which
we already have a high degree of automation.

The challenging tasks are very knowledge-intensive and must be solved cleanly. AI cannot help here.

#### Development tasks

1. Requirement collection

- Can we use AI to find out who is affected by a task?
- Automatically suggest solutions?

2. Planning and Design

- Propose an architecture?
- Write user story use cases or functional specifications?
- Design the user interface?

3. Implementation

- Help us find out if someone is following the coding standards.
- Which development tasks can be done within the scope of our tech stack?
  - C#, MS SQL-Server, PHP, MySQL, TypeScript, Javascript, Powershell, Python, Rust
- Usability for performance optimization, e.g., in SQL
  - Rewriting a scalar function into a view

4. Testing and Quality Assurance

- Develop a test plan?
- Write unit tests?
- Identify and fix bugs?

5. Deployment and Release

- Can AI create scripts to help us automate deployment and release?
  - GitHub Actions
  - Powershell
  - Docker

6. Maintenance and Support

- Writing user documentation
- Writing training materials
- Suggest solutions for identified problems. (Proposal for immediate measures)
- Proofreading of emails and documentation materials (removing grammar and spelling mistakes)
