use DB;

-- This table will store information about various projects.
CREATE TABLE Projects (
    ProjectID INT PRIMARY KEY,             -- Unique identifier for each project
    ProjectName NVARCHAR(100) NOT NULL,    -- Name of the project
    DepartmentID INT,                      -- Foreign key linking to Departments table
    StartDate DATE,                        -- Start date of the project
    EndDate DATE,                          -- End date of the project
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
GO

-- Step 4: Insert 5 sample rows into the Projects table
INSERT INTO Projects (ProjectID, ProjectName, DepartmentID, StartDate, EndDate)
VALUES
(101, 'AI Research Initiative', 1, '2024-01-01', '2024-12-31'),
(102, 'Quantum Computing Study', 3, '2024-03-15', '2025-03-14'),
(103, 'Bioinformatics Database', 5, '2024-06-01', '2025-05-31'),
(104, 'New Curriculum Development', 2, '2024-09-01', '2025-02-28'),
(105, 'Sustainable Energy Project', 4, '2024-11-01', '2025-10-31');
GO
