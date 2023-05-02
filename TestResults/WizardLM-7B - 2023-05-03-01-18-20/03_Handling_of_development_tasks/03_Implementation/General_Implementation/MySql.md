# MySQL

## Prompt 1

Can you please give me the sql for a mysql server for a employee equipment administration software?

### Result

-- Create a table for employees
CREATE TABLE employees (
employee_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
job_title VARCHAR(30) NOT NULL,
department_id INT(6) NOT NULL,
equipment_id INT(6) NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
-- Create a table for equipment
CREATE TABLE equipment (
equipment_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
equipment_name VARCHAR(30) NOT NULL,
equipment_type VARCHAR(30) NOT NULL,
equipment_description VARCHAR(255) NOT NULL,
CONSTRAINT fk_equipment_id FOREIGN KEY (equipment_id) REFERENCES employees(equipment_id)
);
-- Create a table for departments
CREATE TABLE departments (
department_id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(30) NOT NULL,
CONSTRAINT fk_department_id FOREIGN KEY (department_id) REFERENCES employees(department_id)
);
-- Insert data into the employees table
INSERT INTO employees (first_name, last_name, job_title, department_id, equipment_id)
VALUES
('John', 'Doe', 'Manager', 1, 1),
('Jane', 'Doe', 'Employee', 1, 2),
('Bob', 'Smith', 'Engineer', 2, 1),
('Alice', 'Brown', 'Sales Representative', 2, 2);
-- Insert data into the equipment table
INSERT INTO equipment (equipment_name, equipment_type, equipment_description)
VALUES
('Laptop', 'Computer', 'A laptop computer for employees to use'),
('Printer', 'Printer', 'A printer for the office'),
('Projector', 'Projector', 'A projector for presentations'),
('Scanner', 'Scanner', 'A scanner for document scanning');
-- Insert data into the departments table
INSERT INTO departments (department_name)
VALUES
('Sales'),
('Engineering');
