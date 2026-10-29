-- Employee Management System schema.
-- Uses explicit integer keys and standard SQL types for portability.

CREATE TABLE Departments (
    department_id INTEGER NOT NULL,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (department_id),
    CONSTRAINT uq_departments_name UNIQUE (department_name)
);

CREATE TABLE Employees (
    employee_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(12, 2) NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (employee_id),
    CONSTRAINT uq_employees_email UNIQUE (email),
    CONSTRAINT ck_employees_salary CHECK (salary > 0),
    CONSTRAINT fk_employees_department
        FOREIGN KEY (department_id) REFERENCES Departments (department_id)
);

CREATE TABLE Projects (
    project_id INTEGER NOT NULL,
    department_id INTEGER NOT NULL,
    project_name VARCHAR(150) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(20) NOT NULL,
    CONSTRAINT pk_projects PRIMARY KEY (project_id),
    CONSTRAINT uq_projects_name UNIQUE (project_name),
    CONSTRAINT ck_projects_dates CHECK (end_date IS NULL OR end_date >= start_date),
    CONSTRAINT ck_projects_status
        CHECK (status IN ('Planned', 'Active', 'On Hold', 'Completed')),
    CONSTRAINT fk_projects_department
        FOREIGN KEY (department_id) REFERENCES Departments (department_id)
);

CREATE TABLE Employee_Projects (
    employee_id INTEGER NOT NULL,
    project_id INTEGER NOT NULL,
    project_role VARCHAR(100) NOT NULL,
    assigned_date DATE NOT NULL,
    hours_per_week DECIMAL(5, 2) NOT NULL,
    CONSTRAINT pk_employee_projects PRIMARY KEY (employee_id, project_id),
    CONSTRAINT ck_employee_projects_hours
        CHECK (hours_per_week > 0 AND hours_per_week <= 168),
    CONSTRAINT fk_employee_projects_employee
        FOREIGN KEY (employee_id) REFERENCES Employees (employee_id),
    CONSTRAINT fk_employee_projects_project
        FOREIGN KEY (project_id) REFERENCES Projects (project_id)
);
