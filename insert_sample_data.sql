-- Sample data for the Employee Management System.
-- Run create_tables.sql before this script.

INSERT INTO Departments (department_id, department_name, location) VALUES
(1, 'Human Resources', 'Building A'),
(2, 'Engineering', 'Building B'),
(3, 'Sales', 'Building C'),
(4, 'Finance', 'Building A'),
(5, 'Operations', 'Building D');

INSERT INTO Employees
    (employee_id, department_id, first_name, last_name, email, job_title, hire_date, salary)
VALUES
(1, 1, 'Ava', 'Patel', 'ava.patel@example.com', 'HR Manager', '2020-03-16', 82000.00),
(2, 1, 'Noah', 'Kim', 'noah.kim@example.com', 'Recruiter', '2021-06-07', 61000.00),
(3, 1, 'Mia', 'Garcia', 'mia.garcia@example.com', 'HR Generalist', '2022-01-10', 59000.00),
(4, 1, 'Liam', 'Brown', 'liam.brown@example.com', 'Learning Specialist', '2023-04-03', 57000.00),
(5, 2, 'Sophia', 'Chen', 'sophia.chen@example.com', 'Engineering Manager', '2019-08-12', 125000.00),
(6, 2, 'Ethan', 'Singh', 'ethan.singh@example.com', 'Software Engineer', '2021-02-22', 98000.00),
(7, 2, 'Isabella', 'Lopez', 'isabella.lopez@example.com', 'Database Engineer', '2021-11-15', 102000.00),
(8, 2, 'Lucas', 'Wilson', 'lucas.wilson@example.com', 'QA Engineer', '2023-07-17', 85000.00),
(9, 3, 'Amelia', 'Davis', 'amelia.davis@example.com', 'Sales Manager', '2018-05-21', 110000.00),
(10, 3, 'Mason', 'Taylor', 'mason.taylor@example.com', 'Account Executive', '2020-09-14', 78000.00),
(11, 3, 'Harper', 'Thomas', 'harper.thomas@example.com', 'Sales Representative', '2022-03-28', 68000.00),
(12, 3, 'Logan', 'Moore', 'logan.moore@example.com', 'Sales Analyst', '2024-01-08', 65000.00),
(13, 4, 'Evelyn', 'Martin', 'evelyn.martin@example.com', 'Finance Manager', '2017-10-02', 115000.00),
(14, 4, 'James', 'Lee', 'james.lee@example.com', 'Financial Analyst', '2020-06-01', 82000.00),
(15, 4, 'Abigail', 'Clark', 'abigail.clark@example.com', 'Accountant', '2021-12-06', 72000.00),
(16, 4, 'Benjamin', 'Lewis', 'benjamin.lewis@example.com', 'Payroll Specialist', '2023-02-13', 64000.00),
(17, 5, 'Ella', 'Walker', 'ella.walker@example.com', 'Operations Manager', '2019-04-15', 105000.00),
(18, 5, 'Henry', 'Hall', 'henry.hall@example.com', 'Operations Analyst', '2021-08-09', 79000.00),
(19, 5, 'Scarlett', 'Young', 'scarlett.young@example.com', 'Logistics Coordinator', '2022-10-24', 67000.00),
(20, 5, 'Alexander', 'King', 'alexander.king@example.com', 'Facilities Coordinator', '2024-05-20', 60000.00);

INSERT INTO Projects
    (project_id, department_id, project_name, start_date, end_date, status)
VALUES
(1, 2, 'Customer Portal Upgrade', '2025-01-15', NULL, 'Active'),
(2, 2, 'Data Warehouse Modernization', '2025-02-01', NULL, 'Active'),
(3, 3, 'Regional Sales Expansion', '2025-03-01', NULL, 'Active'),
(4, 1, 'Employee Learning Program', '2025-01-20', NULL, 'Active'),
(5, 4, 'Financial Reporting Automation', '2025-04-01', NULL, 'Planned'),
(6, 5, 'Supply Chain Optimization', '2024-10-01', '2025-06-30', 'Completed'),
(7, 2, 'Mobile App Release', '2025-05-01', NULL, 'On Hold'),
(8, 3, 'Customer Insights Initiative', '2025-02-15', NULL, 'Active'),
(9, 5, 'Office Relocation', '2025-06-01', NULL, 'Planned'),
(10, 4, 'Annual Budget Planning', '2025-01-05', '2025-03-31', 'Completed');

INSERT INTO Employee_Projects
    (employee_id, project_id, project_role, assigned_date, hours_per_week)
VALUES
(5, 1, 'Project Sponsor', '2025-01-15', 4.00),
(6, 1, 'Backend Developer', '2025-01-15', 20.00),
(7, 1, 'Data Integration Engineer', '2025-01-20', 12.00),
(8, 1, 'Quality Assurance', '2025-01-20', 16.00),
(6, 2, 'Technical Lead', '2025-02-01', 14.00),
(7, 2, 'Database Engineer', '2025-02-01', 24.00),
(14, 2, 'Data Analyst', '2025-02-10', 8.00),
(9, 3, 'Executive Sponsor', '2025-03-01', 3.00),
(10, 3, 'Account Lead', '2025-03-01', 18.00),
(11, 3, 'Sales Representative', '2025-03-03', 16.00),
(2, 4, 'Program Coordinator', '2025-01-20', 12.00),
(3, 4, 'HR Content Specialist', '2025-01-20', 16.00),
(4, 4, 'Trainer', '2025-01-22', 20.00),
(13, 5, 'Project Sponsor', '2025-04-01', 4.00),
(14, 5, 'Finance Analyst', '2025-04-01', 18.00),
(15, 5, 'Process Accountant', '2025-04-02', 12.00),
(17, 6, 'Project Manager', '2024-10-01', 12.00),
(18, 6, 'Operations Analyst', '2024-10-01', 20.00),
(19, 6, 'Logistics Lead', '2024-10-03', 20.00),
(6, 7, 'Mobile Developer', '2025-05-01', 10.00),
(8, 7, 'Release Tester', '2025-05-01', 8.00),
(10, 8, 'Business Representative', '2025-02-15', 6.00),
(12, 8, 'Sales Data Analyst', '2025-02-15', 16.00),
(17, 9, 'Relocation Lead', '2025-06-01', 14.00),
(18, 9, 'Operations Coordinator', '2025-06-01', 12.00),
(13, 10, 'Budget Owner', '2025-01-05', 8.00),
(16, 10, 'Payroll Cost Analyst', '2025-01-06', 10.00);
