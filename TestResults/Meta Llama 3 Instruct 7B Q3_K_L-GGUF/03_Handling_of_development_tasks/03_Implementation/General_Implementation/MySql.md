# MySQL

## Prompt 1

Can you please give me the sql for a mysql server for a employee equipment administration software?

### Result

Here is an example of a database schema and some sample SQL code for an Employee Equipment Administration Software using MySQL:

**Tables:**

1. **employees**
   - `employee_id` (int, primary key)
   - `first_name` (varchar(50))
   - `last_name` (varchar(50))
   - `email` (varchar(100))
2. **equipment**
   - `equipment_id` (int, primary key)
   - `equipment_name` (varchar(100))
   - `description` (text)
   - `type` (varchar(50)) // e.g. laptop, desktop, tablet, etc.
3. **employee_equipment**
   - `employee_id` (int, foreign key to employees table)
   - `equipment_id` (int, foreign key to equipment table)
   - `issue_date` (datetime) // date the equipment was issued to the employee
   - `return_date` (datetime) // date the equipment was returned by the employee
4. **assets**
   - `asset_id` (int, primary key)
   - `equipment_id` (int, foreign key to equipment table)
   - `serial_number` (varchar(50))
   - `asset_status` (varchar(50)) // e.g. available, issued, returned, lost, stolen, etc.

**SQL Code:**

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE equipment (
    equipment_id INT PRIMARY KEY,
    equipment_name VARCHAR(100),
    description TEXT,
    type VARCHAR(50)
);

CREATE TABLE employee_equipment (
    employee_id INT FOREIGN KEY REFERENCES employees(employee_id),
    equipment_id INT FOREIGN KEY REFERENCES equipment(equipment_id),
    issue_date DATETIME,
    return_date DATETIME
);

CREATE TABLE assets (
    asset_id INT PRIMARY KEY,
    equipment_id INT FOREIGN KEY REFERENCES equipment(equipment_id),
    serial_number VARCHAR(50),
    asset_status VARCHAR(50)
);
```

**Indexing:**

```sql
CREATE INDEX idx_employees_email ON employees(email);

CREATE INDEX idx_equipment_serial_number ON equipment(serial_number);

CREATE INDEX idx_employee_equipment_issue_date ON employee_equipment(issue_date);
```

**Stored Procedures:**

```sql
DELIMITER //

CREATE PROCEDURE sp_issue_equipment(IN p_employee_id INT, IN p_equipment_id INT)
BEGIN
    INSERT INTO employee_equipment (employee_id, equipment_id, issue_date)
    VALUES (p_employee_id, p_equipment_id, NOW());
END //

CREATE PROCEDURE sp_return_equipment(IN p_employee_id INT, IN p_equipment_id INT)
BEGIN
    UPDATE employee_equipment
    SET return_date = NOW()
    WHERE employee_id = p_employee_id AND equipment_id = p_equipment_id;
END //
```

**Trigger:**

```sql
DELIMITER //

CREATE TRIGGER trg_update_asset_status BEFORE UPDATE ON assets FOR EACH ROW
BEGIN
    IF NEW.asset_status = 'issued' THEN
        SET @previous_status = (SELECT asset_status FROM assets WHERE asset_id = NEW.asset_id ORDER BY return_date DESC LIMIT 1);
        IF @previous_status IS NOT NULL THEN
            UPDATE equipment
            SET available_equipment = available_equipment + 1
            WHERE equipment_id = NEW.equipment_id;
        END IF;
    ELSE IF NEW.asset_status = 'returned' THEN
        SET @previous_status = (SELECT asset_status FROM assets WHERE asset_id = NEW.asset_id ORDER BY return_date DESC LIMIT 1);
        IF @previous_status IS NOT NULL THEN
            UPDATE equipment
            SET available_equipment = available_equipment - 1
            WHERE equipment_id = NEW.equipment_id;
        END IF;
    END IF;
END //
```

Please note that this is just an example and should be reviewed and modified according to your specific needs. Additionally, you may need to add more tables, columns, and relationships depending on the specific requirements of your software.
