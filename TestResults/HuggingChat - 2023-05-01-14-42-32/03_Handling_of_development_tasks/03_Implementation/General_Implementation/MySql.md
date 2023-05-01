# MySQL

## Prompt 1

Can you please give me the sql for a mysql server for a employee equipment administration software?

### Result

Of course! In MySQL Workbench, you can create a schema for an Employee Equipment Administration System. Here are some SQL statements that will help you establish the foundation of your system's database structure. Remember to modify the queries according to your particular requirements. Also, make sure to replace 'equipmentsystem' with your chosen database name throughout this tutorial.

Let's begin with initializing the equipmentsystem database:

```sql
CREATE DATABASE IF NOT EXISTS equipmentsystem;
USE equipmentsystem;

-- Create a superuser account
SET PASSWORD FOR root@localhost='';
GRANT ALL ON _._ TO 'root'@'%' IDENTIFIED BY '';
FLUSH PRIVILEGES;

-- Add common global variables
SELECT @@GLOBAL.max_allowed_packet=67108864;
```

Now, let's create the essential tables:

--- employees.ddl ---

We'll start with the 'Employees' table. This is where you store all relevant information about your company's staff members:

```sql
CREATE TABLE Employees (
id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password_hash VARCHAR(256));
```

The id column holds unique identifiers for each employee, while the rest of the columns store basic details about their identity. We use the SERIAL type for id since it automatically assigns incremental integers upon each new row insertion.

--- assets.ddl ---

Next, we have the 'Assets' table, where we manage data on individual pieces of hardware:

```sql
CREATE TABLE Assets (
id INTEGER UNSIGNED AUTO_INCREMENT,
name VARCHAR(255),
description TEXT,
serial_number VARCHAR(255),
purchase_date DATE,
employee_id INTEGER REFERENCES Employees(id),
CONSTRAINT pk_assets PRIMARY KEY (id),
FOREIGN KEY fk_employee (employee_id) REFERENCES Employees(id) ON DELETE CASCADE
);
```

In this table, we track important attributes about each device connected to the employees, including its title, model number, unique identifier, acquisition date, and the associated staff member. Additionally, we define several constraints – one primary key, a few foreign keys, and a cascade deletion rule on the 'fk_employees' link.

--- status.ddl ---

Finally, the 'Statuses' table contains status states for various purposes:

```sql
CREATE TABLE Statuses (
id SERIAL PRIMARY COLUMN,
name VARCHAR(255),
color CHAR(30),
active BOO)
```
