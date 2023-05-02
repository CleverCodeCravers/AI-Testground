# Microsoft SQL Server

## Prompt 1

Can you please give me the sql for a microsoft sql server for a employee equipment administration software?

### Result

Here is an example SQL query for a Microsoft SQL Server database for an employee equipment administration software:

```
-- Create a table to store employee equipment information
CREATE TABLE EmployeeEquipment (
    EmployeeID INT PRIMARY KEY,
    EquipmentName VARCHAR(50),
    EquipmentType VARCHAR(50),
    EquipmentModel VARCHAR(50),
    EquipmentSerialNumber VARCHAR(50),
    EquipmentStatus VARCHAR(50),
    EquipmentPurchaseDate DATE,
    EquipmentPurchasePrice DECIMAL(10,2),
    EquipmentInventoryDate DATE,
    EquipmentInventoryQuantity INT,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
-- Insert employee equipment information
INSERT INTO EmployeeEquipment (EmployeeID, EquipmentName, EquipmentType, EquipmentModel, EquipmentSerialNumber, EquipmentStatus, EquipmentPurchaseDate, EquipmentPurchasePrice, EquipmentInventoryDate, EquipmentInventoryQuantity)
VALUES (1, 'Laptop', 'Computer', 'Dell XPS 13', '123456789', 'New', '2021-01-01', 1200.00, '2021-01-01', 1),
       (2, 'Printer', 'Printer', 'Canon PIXMA Pro-100', '987654321', 'Used', '2021-01-02', 500.00, '2021-01-02', 2),
       (3, 'Projector', 'Projector', 'Sony VPL-VW270ES', '123456789', 'New', '2021-01-03', 1500.00, '2021-01-03', 1);
-- Query to retrieve employee equipment information by employee ID
SELECT * FROM EmployeeEquipment WHERE EmployeeID = 1;
```

This SQL code creates a table called `EmployeeEquipment` to store employee equipment information, including the employee ID, equipment name, equipment type, equipment model, equipment serial number, equipment status, purchase date, purchase price, inventory date, inventory quantity, and foreign key referencing the employee ID in the `Employee` table. It then inserts sample employee equipment information into the table and queries the table to retrieve equipment information for a specific employee ID.
