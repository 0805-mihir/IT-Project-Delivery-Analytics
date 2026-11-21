USE it_project_delivery;

-- Query 1: Overall Project Budget vs Actual Cost Summary
SELECT 
    COUNT(*) AS Total_Projects,
    SUM(Project_Budget) AS Total_Budget,
    SUM(Actual_Cost) AS Total_Actual_Cost,
    SUM(Budget_Difference) AS Overall_Budget_Difference
FROM projects;

-- Query 2: Project Status Wise Distribution
SELECT 
    Project_Status,
    COUNT(*) AS Project_Count,
    SUM(Project_Budget) AS Total_Budget,
    SUM(Actual_Cost) AS Total_Actual_Cost
FROM projects
GROUP BY Project_Status;

-- Query 3: Over-Budget ane Delayed Projects Report (Client Details Sathe)
SELECT 
    p.Project_ID,
    p.Project_Name,
    c.Client_Name,
    c.Industry,
    c.Location,
    p.Project_Budget,
    p.Actual_Cost,
    p.Budget_Difference,
    p.Project_Status
FROM projects p
JOIN clients c ON p.Client_ID = c.Client_ID
WHERE p.Budget_Status = 'Over Budget' OR p.Project_Status = 'Delayed';

-- Query 4: Industry ane Location Wise Client Revenue Report
SELECT 
    Industry,
    Location,
    COUNT(Client_ID) AS Total_Clients,
    SUM(Contract_Value) AS Total_Contract_Value
FROM clients
GROUP BY Industry, Location
ORDER BY Total_Contract_Value DESC;

-- Query 5: Completed vs Delayed Tasks Efficiency
SELECT 
    Task_Status,
    COUNT(*) AS Task_Count,
    SUM(Estimated_Hours) AS Total_Estimated_Hours,
    SUM(Actual_Hours) AS Total_Actual_Hours,
    SUM(Hours_Difference) AS Total_Hours_Difference
FROM tasks
WHERE Task_Status IN ('Completed', 'Delayed')
GROUP BY Task_Status;