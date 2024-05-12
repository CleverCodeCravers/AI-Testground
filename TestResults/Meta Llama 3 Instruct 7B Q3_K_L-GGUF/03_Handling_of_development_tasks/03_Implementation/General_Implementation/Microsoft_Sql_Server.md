# Microsoft SQL Server

## Prompt 1

Can you please give me the sql for a microsoft sql server for a employee equipment administration software?

### Result

Here is an example of a database schema and some sample SQL code for an Employee Equipment Administration Software using Microsoft SQL Server:

**Tables:**

1. **Employees**
   - `EmployeeID` (int, primary key)
   - `FirstName` (nvarchar(50))
   - `LastName` (nvarchar(50))
   - `Email` (nvarchar(100))
2. **Equipment**
   - `EquipmentID` (int, primary key)
   - `EquipmentName` (nvarchar(100))
   - `Description` (nvarchar(255))
   - `Type` (nvarchar(50)) // e.g. laptop, desktop, tablet, etc.
3. **Employee_Equipment**
   - `EmployeeID` (int, foreign key to Employees table)
   - `EquipmentID` (int, foreign key to Equipment table)
   - `IssueDate` (datetime) // date the equipment was issued to the employee
   - `ReturnDate` (datetime) // date the equipment was returned by the employee
4. **Assets**
   - `AssetID` (int, primary key)
   - `EquipmentID` (int, foreign key to Equipment table)
   - `SerialNumber` (nvarchar(50))
   - `AssetStatus` (nvarchar(50)) // e.g. available, issued, returned, lost, stolen, etc.

**SQL Code:**

```sql
-- Create Employees table
CREATE TABLE Employees (
    EmployeeID int PRIMARY KEY,
    FirstName nvarchar(50),
    LastName nvarchar(50),
    Email nvarchar(100)
);

-- Create Equipment table
CREATE TABLE Equipment (
    EquipmentID int PRIMARY KEY,
    EquipmentName nvarchar(100),
    Description nvarchar(255),
    Type nvarchar(50)
);

-- Create Employee_Equipment table
CREATE TABLE Employee_Equipment (
    EmployeeID int FOREIGN KEY REFERENCES Employees(EmployeeID),
    EquipmentID int FOREIGN KEY REFERENCES Equipment(EquipmentID),
    IssueDate datetime,
    ReturnDate datetime
);

-- Create Assets table
CREATE TABLE Assets (
    AssetID int PRIMARY KEY,
    EquipmentID int FOREIGN KEY REFERENCES Equipment(EquipmentID),
    SerialNumber nvarchar(50),
    AssetStatus nvarchar(50)
);
```

**Indexing:**

```sql
-- Index on Employees table
CREATE INDEX idx_Employees_Email ON Employees(Email);

-- Index on Equipment table
CREATE INDEX idx_Equipment_SerialNumber ON Equipment(SerialNumber);

-- Index on Employee_Equipment table
CREATE INDEX idx_Employee_Equipment_IssueDate ON Employee_Equipment(IssueDate);
```

**Stored Procedures:**

```sql
-- Procedure to issue equipment to an employee
CREATE PROCEDURE sp_IssueEquipment @EmployeeID int, @EquipmentID int
AS BEGIN
    INSERT INTO Employee_Equipment (EmployeeID, EquipmentID, IssueDate)
    VALUES (@EmployeeID, @EquipmentID, GETDATE());
END;

-- Procedure to return equipment by an employee
CREATE PROCEDURE sp_ReturnEquipment @EmployeeID int, @EquipmentID int
AS BEGIN
    UPDATE Employee_Equipment
    SET ReturnDate = GETDATE()
    WHERE EmployeeID = @EmployeeID AND EquipmentID = @EquipmentID;
END;
```

This is just a basic example to get you started. You may need to add more tables, columns, and relationships depending on the specific requirements of your software. Additionally, you'll need to write more stored procedures and SQL queries to implement the functionality of your application.

Please note that this is not a production-ready database schema and should be reviewed and modified according to your specific needs.
