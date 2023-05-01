# Microsoft SQL Server

## Prompt 1

Can you please give me the sql for a microsoft sql server for a employee equipment administration software?

### Result

Here is a simple SQL script to create tables for an employee equipment administration application in Microsoft SQL Server:

```sql
-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    PhoneNumber NVARCHAR(20),
    Department NVARCHAR(50)
);

-- Create the Equipment table
CREATE TABLE Equipment (
    EquipmentID INT PRIMARY KEY IDENTITY(1,1),
    EquipmentName NVARCHAR(100) NOT NULL,
    EquipmentType NVARCHAR(50) NOT NULL,
    SerialNumber NVARCHAR(50),
    PurchaseDate DATE,
    WarrantyEndDate DATE
);

-- Create the EmployeeEquipment table
CREATE TABLE EmployeeEquipment (
    EmployeeID INT FOREIGN KEY REFERENCES Employees(EmployeeID),
    EquipmentID INT FOREIGN KEY REFERENCES Equipment(EquipmentID),
    AssignmentDate DATE NOT NULL,
    ReturnDate DATE,
    PRIMARY KEY (EmployeeID, EquipmentID)
);
```

This script creates three tables:

1. `Employees`: Contains employee details like name, email, phone number, and department.
2. `Equipment`: Contains equipment details like name, type, serial number, purchase date, and warranty end date.
3. `EmployeeEquipment`: Associates employees with the equipment they have been assigned, including assignment and return dates.

You can customize these tables further to fit your specific requirements for an employee equipment administration application.
