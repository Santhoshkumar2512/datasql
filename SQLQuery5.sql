use DB;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,            -- Unique identifier for each employee
    FirstName NVARCHAR(50) NOT NULL,       -- Employee's first name
    LastName NVARCHAR(50) NOT NULL,        -- Employee's last name
    DepartmentID INT,                      -- Foreign key linking to Departments table
    HireDate DATE,                         -- Date when the employee was hired
    Salary DECIMAL(10, 2),                 -- Employee's salary
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
GO

-- Step 6: Insert 5 sample rows into the Employees table
INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, HireDate, Salary)
VALUES
(1, 'Sarah', 'Connor', 1, '2023-01-10', 75000.00),
(2, 'Michael', 'Scott', 2, '2022-05-20', 60000.00),
(3, 'Dwight', 'Schrute', 1, '2023-03-01', 78000.00),
(4, 'Pam', 'Beesly', 5, '2021-11-15', 55000.00),
(5, 'Jim', 'Halpert', 3, '2022-08-01', 70000.00);
GO