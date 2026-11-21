SELECT
    SCHEMA_NAME,
    HEX(SCHEMA_NAME),
    LENGTH(SCHEMA_NAME)
FROM INFORMATION_SCHEMA.SCHEMATA;
SELECT DATABASE();
SELECT DATABASE();
SHOW TABLES;
SELECT * FROM projects;
SELECT * FROM clients;
SELECT * FROM tasks;
-- Count total number of projects
SELECT COUNT(*) AS total_projects
from projects;
-- Project Status Analysis
SELECT
project_status,
count(*) as Total_Projects
FROM projects
GROUP BY Project_Status;
select
Project_Status,
count(*) as Total_Projects
FROM Projects 
group by Project_status
order by Total_projects DESC;
-- Query 3: Calculate Total Project Budget
-- Purpose: Find the total budget of all projects

SELECT
    SUM(Project_Budget) AS Total_Project_Budget
FROM projects;

-- Query 4: Calculate Total Actual Cost
-- Purpose: Find the total actual cost of all projects

SELECT
    SUM(Actual_Cost) AS Total_Actual_Cost
FROM projects;

-- Query 5: Calculate Total Budget Difference
-- Purpose: Compare actual cost with project budget

SELECT
    SUM(Actual_Cost) AS Total_Actual_Cost,
    SUM(Project_Budget) AS Total_Project_Budget,
    SUM(Actual_Cost - Project_Budget) AS Total_Budget_Difference
FROM projects;


-- Client and Project Analysis
-- Purpose: Combine client and project information

SELECT
    c.Client_ID,
    c.Client_Name,
    p.Project_ID,
    p.Project_Name,
    p.Project_Status,
    p.Project_Budget
FROM clients c
INNER JOIN projects p
ON c.Client_ID = p.Client_ID;

-- Task Status Analysis
-- Count tasks according to their status
