USE it_project_delivery;

-- 1. Clients Table Ma 20 Records Insert Karo
INSERT INTO clients (Client_ID, Client_Name, Industry, Location, Contact_Person, Project_Count, Contract_Value, Client_Status) VALUES
('CL001', 'TechNova Solutions', 'IT Services', 'Ahmedabad', 'Rahul Shah', 1, 65000, 'Active'),
('CL002', 'GreenLeaf Industries', 'Manufacturing', 'Vadodara', 'Priya Patel', 1, 125000, 'Active'),
('CL003', 'ShopEase Retail', 'Retail', 'Surat', 'Amit Desai', 1, 95000, 'Active'),
('CL004', 'FinEdge Consultants', 'Finance', 'Gandhinagar', 'Neha Mehta', 1, 150000, 'Active'),
('CL005', 'PrimeStock Traders', 'Trading', 'Rajkot', 'Karan Joshi', 1, 85000, 'Active'),
('CL006', 'Bright Future Academy', 'Education', 'Ahmedabad', 'Sonal Trivedi', 1, 110000, 'Active'),
('CL007', 'BlueSky Enterprises', 'IT Services', 'Vadodara', 'Rohan Shah', 1, 50000, 'Active'),
('CL008', 'QuickBook Services', 'Travel', 'Surat', 'Anjali Patel', 1, 90000, 'Active'),
('CL009', 'HelpDesk Pro', 'IT Services', 'Ahmedabad', 'Vikas Parmar', 1, 85000, 'Active'),
('CL010', 'PayRight Solutions', 'Finance', 'Mumbai', 'Riya Shah', 1, 75000, 'Active'),
('CL011', 'StayComfort Hotels', 'Hospitality', 'Ahmedabad', 'Manish Patel', 1, 135000, 'Active'),
('CL012', 'HealthFirst Group', 'Healthcare', 'Vadodara', 'Dr. Kavita Shah', 1, 180000, 'Active'),
('CL013', 'LearnSphere Institute', 'Education', 'Surat', 'Hemal Desai', 1, 105000, 'Active'),
('CL014', 'FoodServe Restaurant', 'Hospitality', 'Ahmedabad', 'Dev Joshi', 1, 70000, 'Active'),
('CL015', 'PropertyLink Realty', 'Real Estate', 'Gandhinagar', 'Pooja Mehta', 1, 145000, 'Active'),
('CL016', 'TravelMate Agency', 'Travel', 'Mumbai', 'Nirav Shah', 1, 120000, 'Active'),
('CL017', 'FreshCart Market', 'Retail', 'Ahmedabad', 'Krupa Patel', 1, 130000, 'Active'),
('CL018', 'PeopleFirst HR', 'HR Services', 'Vadodara', 'Jay Mehta', 1, 100000, 'Active'),
('CL019', 'TrackWise Logistics', 'Logistics', 'Surat', 'Hardik Shah', 1, 80000, 'Active'),
('CL020', 'DigiGrowth Media', 'Digital Marketing', 'Ahmedabad', 'Mitali Joshi', 1, 95000, 'Active');

-- 2. Projects Table Ma 20 Records Insert Karo
INSERT INTO projects (Project_ID, Project_Name, Start_Date, Client_ID, End_Date, Project_Budget, Actual_Cost, Project_Status, Priority, Budget_Difference, Budget_Status) VALUES
('PRJ001', 'Website Development', '2026-08-05', 'CL001', '2026-09-20', 65000, 62000, 'Completed', 'High', -3000, 'Under Budget'),
('PRJ002', 'Mobile Application Development', '2026-08-12', 'CL002', '2026-10-15', 125000, 118000, 'Completed', 'High', -7000, 'Under Budget'),
('PRJ003', 'E-commerce Website', '2026-08-20', 'CL003', '2026-10-10', 95000, 102000, 'Delayed', 'High', 7000, 'Over Budget'),
('PRJ004', 'CRM Software Development', '2026-09-01', 'CL004', '2026-10-25', 150000, 145000, 'Completed', 'Medium', -5000, 'Under Budget'),
('PRJ005', 'Inventory Management System', '2026-09-10', 'CL005', '2026-10-30', 85000, 92000, 'Delayed', 'Medium', 7000, 'Over Budget'),
('PRJ006', 'School Management Software', '2026-09-15', 'CL006', '2026-10-28', 110000, 105000, 'Completed', 'High', -5000, 'Under Budget'),
('PRJ007', 'Business Website Redesign', '2026-10-01', 'CL007', '2026-10-31', 50000, 48000, 'Completed', 'Low', -2000, 'Under Budget'),
('PRJ008', 'Online Booking System', '2026-10-05', 'CL008', '2026-10-31', 90000, 94000, 'Delayed', 'Medium', 4000, 'Over Budget'),
('PRJ009', 'Customer Support Portal', '2026-11-01', 'CL009', '2026-12-15', 85000, 25000, 'In Progress', 'High', -60000, 'Under Budget'),
('PRJ010', 'Payroll Management Software', '2026-11-03', 'CL010', '2026-12-20', 75000, 18000, 'In Progress', 'Medium', -57000, 'Under Budget'),
('PRJ011', 'Hotel Management System', '2026-11-04', 'CL011', '2027-01-10', 135000, 35000, 'In Progress', 'High', -100000, 'Under Budget'),
('PRJ012', 'Healthcare Management Platform', '2026-11-05', 'CL012', '2027-01-20', 180000, 45000, 'In Progress', 'High', -135000, 'Under Budget'),
('PRJ013', 'Online Learning Platform', '2026-11-07', 'CL013', '2026-12-30', 105000, 30000, 'In Progress', 'Medium', -75000, 'Under Budget'),
('PRJ014', 'Restaurant Billing Software', '2026-11-10', 'CL014', '2026-12-25', 70000, 12000, 'In Progress', 'Low', -58000, 'Under Budget'),
('PRJ015', 'Real Estate Management Portal', '2026-11-12', 'CL015', '2027-01-25', 145000, 20000, 'In Progress', 'High', -125000, 'Under Budget'),
('PRJ016', 'Travel Booking Application', '2026-11-15', 'CL016', '2027-01-15', 120000, 10000, 'In Progress', 'Medium', -110000, 'Under Budget'),
('PRJ017', 'Online Grocery Platform', '2026-12-01', 'CL017', '2027-02-28', 130000, 0, 'Planned', 'High', -130000, 'Under Budget'),
('PRJ018', 'Employee Management System', '2026-12-10', 'CL018', '2027-03-10', 100000, 0, 'Planned', 'Medium', -100000, 'Under Budget'),
('PRJ019', 'Inventory Tracking Software', '2027-01-05', 'CL019', '2027-03-20', 80000, 0, 'Planned', 'Low', -80000, 'Under Budget'),
('PRJ020', 'Digital Marketing Analytics Tool', '2027-01-15', 'CL020', '2027-03-31', 95000, 0, 'Planned', 'High', -95000, 'Under Budget');

-- 3. Tasks Table Ma 20 Records Insert Karo
INSERT INTO tasks (Task_ID, Project_ID, Task_Name, Assigned_To, Start_Date, Due_Date, Task_Status, Priority, Estimated_Hours, Actual_Hours, Hours_Difference, Efficiency_Status) VALUES
('TSK001', 'PRJ001', 'Requirement Gathering', 'Rahul Mehta', '2026-08-05', '2026-08-07', 'Completed', 'High', 8, 7, -1, 'Under Time'),
('TSK002', 'PRJ002', 'UI/UX Design', 'Priya Shah', '2026-08-12', '2026-08-18', 'Completed', 'High', 16, 15, -1, 'Under Time'),
('TSK003', 'PRJ003', 'Frontend Development', 'Amit Patel', '2026-08-20', '2026-09-05', 'Delayed', 'High', 30, 38, 8, 'Over Time'),
('TSK004', 'PRJ004', 'Database Design', 'Neha Joshi', '2026-09-01', '2026-09-08', 'Completed', 'Medium', 12, 11, -1, 'Under Time'),
('TSK005', 'PRJ005', 'Backend Development', 'Karan Shah', '2026-09-10', '2026-09-25', 'Delayed', 'High', 35, 42, 7, 'Over Time'),
('TSK006', 'PRJ006', 'Software Testing', 'Sonal Patel', '2026-09-15', '2026-09-25', 'Completed', 'Medium', 20, 18, -2, 'Under Time'),
('TSK007', 'PRJ007', 'Website Redesign', 'Rohan Mehta', '2026-10-01', '2026-10-15', 'Completed', 'Low', 18, 16, -2, 'Under Time'),
('TSK008', 'PRJ008', 'Payment Integration', 'Anjali Shah', '2026-10-05', '2026-10-20', 'Delayed', 'High', 24, 30, 6, 'Over Time'),
('TSK009', 'PRJ009', 'API Development', 'Vikas Patel', '2026-11-01', '2026-11-15', 'In Progress', 'High', 30, 12, -18, 'Under Time'),
('TSK010', 'PRJ010', 'Payroll Module', 'Riya Mehta', '2026-11-03', '2026-11-18', 'In Progress', 'Medium', 25, 8, -17, 'Under Time'),
('TSK011', 'PRJ011', 'Booking Module', 'Manish Shah', '2026-11-04', '2026-11-20', 'In Progress', 'High', 32, 15, -17, 'Under Time'),
('TSK012', 'PRJ012', 'Patient Management', 'Kavita Patel', '2026-11-05', '2026-11-25', 'In Progress', 'High', 40, 18, -22, 'Under Time'),
('TSK013', 'PRJ013', 'Course Management', 'Hemal Shah', '2026-11-07', '2026-11-22', 'In Progress', 'Medium', 28, 10, -18, 'Under Time'),
('TSK014', 'PRJ014', 'Billing Module', 'Dev Mehta', '2026-11-10', '2026-11-25', 'In Progress', 'Low', 20, 5, -15, 'Under Time'),
('TSK015', 'PRJ015', 'Property Listing Module', 'Pooja Shah', '2026-11-12', '2026-11-28', 'In Progress', 'High', 35, 7, -28, 'Under Time'),
('TSK016', 'PRJ016', 'Travel Search Module', 'Nirav Patel', '2026-11-15', '2026-11-30', 'In Progress', 'Medium', 30, 4, -26, 'Under Time'),
('TSK017', 'PRJ017', 'Grocery Catalog', 'Jay Shah', '2026-12-01', '2026-12-15', 'Pending', 'High', 25, 0, -25, 'Under Time'),
('TSK018', 'PRJ018', 'Employee Records', 'Hardik Mehta', '2026-12-10', '2026-12-20', 'Pending', 'Medium', 20, 0, -20, 'Under Time'),
('TSK019', 'PRJ019', 'Inventory Tracking', 'Mitali Patel', '2027-01-05', '2027-01-20', 'Pending', 'Low', 18, 0, -18, 'Under Time'),
('TSK020', 'PRJ020', 'Analytics Dashboard', 'Rahul Shah', '2027-01-15', '2027-01-30', 'Pending', 'High', 30, 0, -30, 'Under Time');

-- 4. Verify Record Count in All 3 Tables
SELECT 
    (SELECT COUNT(*) FROM clients) AS Total_Clients,
    (SELECT COUNT(*) FROM projects) AS Total_Projects,
    (SELECT COUNT(*) FROM tasks) AS Total_Tasks;