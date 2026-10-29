# Employee Management System — Table Definitions

## Departments

| Column | Type | Constraints | Description |
|---|---|---|---|
| `department_id` | `INTEGER` | Primary key | Unique department identifier |
| `department_name` | `VARCHAR(100)` | Not null, unique | Department name |
| `location` | `VARCHAR(100)` | Not null | Department location |

## Employees

| Column | Type | Constraints | Description |
|---|---|---|---|
| `employee_id` | `INTEGER` | Primary key | Unique employee identifier |
| `department_id` | `INTEGER` | Not null, foreign key → `Departments.department_id` | Employee's department |
| `first_name` | `VARCHAR(50)` | Not null | Employee's first name |
| `last_name` | `VARCHAR(50)` | Not null | Employee's last name |
| `email` | `VARCHAR(150)` | Not null, unique | Work email address |
| `job_title` | `VARCHAR(100)` | Not null | Employee's job title |
| `hire_date` | `DATE` | Not null | Employee's hire date |
| `salary` | `DECIMAL(12,2)` | Not null, greater than zero | Annual salary |

## Projects

| Column | Type | Constraints | Description |
|---|---|---|---|
| `project_id` | `INTEGER` | Primary key | Unique project identifier |
| `department_id` | `INTEGER` | Not null, foreign key → `Departments.department_id` | Owning department |
| `project_name` | `VARCHAR(150)` | Not null, unique | Project name |
| `start_date` | `DATE` | Not null | Planned or actual start date |
| `end_date` | `DATE` | Nullable; on or after `start_date` when present | Project end date |
| `status` | `VARCHAR(20)` | Not null; `Planned`, `Active`, `On Hold`, or `Completed` | Current project status |

## Employee_Projects

| Column | Type | Constraints | Description |
|---|---|---|---|
| `employee_id` | `INTEGER` | Composite primary key; foreign key → `Employees.employee_id` | Assigned employee |
| `project_id` | `INTEGER` | Composite primary key; foreign key → `Projects.project_id` | Assigned project |
| `project_role` | `VARCHAR(100)` | Not null | Employee's role on the project |
| `assigned_date` | `DATE` | Not null | Date the employee was assigned |
| `hours_per_week` | `DECIMAL(5,2)` | Not null, greater than zero and at most 168 | Expected weekly project hours |

## Keys and relationships

- **Primary keys:** `Departments.department_id`, `Employees.employee_id`, `Projects.project_id`, and the composite (`Employee_Projects.employee_id`, `Employee_Projects.project_id`).
- **Foreign keys:** `Employees.department_id` → `Departments.department_id`; `Projects.department_id` → `Departments.department_id`; `Employee_Projects.employee_id` → `Employees.employee_id`; `Employee_Projects.project_id` → `Projects.project_id`.
- **Other unique keys:** `Departments.department_name`, `Employees.email`, and `Projects.project_name`.
- **Cardinality:** One department can have many employees and projects. Employees and projects have a many-to-many relationship through `Employee_Projects`.

## Sample data

The accompanying [`insert_sample_data.sql`](./insert_sample_data.sql) inserts 5 departments, 20 employees, 10 projects, and 25 employee-project assignments. Run [`create_tables.sql`](./create_tables.sql) first.
