# Employee Management System ER Diagram

```mermaid
erDiagram
    DEPARTMENTS ||--o{ EMPLOYEES : employs
    DEPARTMENTS ||--o{ PROJECTS : owns
    EMPLOYEES ||--o{ EMPLOYEE_PROJECTS : assigned_to
    PROJECTS ||--o{ EMPLOYEE_PROJECTS : includes

    DEPARTMENTS {
        INTEGER department_id PK "NOT NULL"
        VARCHAR department_name UK "NOT NULL, max 100"
        VARCHAR location "NOT NULL, max 100"
    }

    EMPLOYEES {
        INTEGER employee_id PK "NOT NULL"
        INTEGER department_id FK "NOT NULL"
        VARCHAR first_name "NOT NULL, max 50"
        VARCHAR last_name "NOT NULL, max 50"
        VARCHAR email UK "NOT NULL, max 150"
        VARCHAR job_title "NOT NULL, max 100"
        DATE hire_date "NOT NULL"
        DECIMAL salary "NOT NULL, 12 2, greater than 0"
    }

    PROJECTS {
        INTEGER project_id PK "NOT NULL"
        INTEGER department_id FK "NOT NULL"
        VARCHAR project_name UK "NOT NULL, max 150"
        DATE start_date "NOT NULL"
        DATE end_date "NULL allowed"
        VARCHAR status "NOT NULL, max 20"
    }

    EMPLOYEE_PROJECTS {
        INTEGER employee_id PK, FK "NOT NULL"
        INTEGER project_id PK, FK "NOT NULL"
        VARCHAR project_role "NOT NULL, max 100"
        DATE assigned_date "NOT NULL"
        DECIMAL hours_per_week "NOT NULL, 5 2"
    }
```

`EMPLOYEE_PROJECTS` resolves the many-to-many relationship between employees and projects. Its composite primary key prevents an employee from being assigned to the same project more than once.

## Rules shown in the schema

- **Departments:** `department_id` is the primary key; `department_name` is unique.
- **Employees:** `employee_id` is the primary key; `email` is unique; `department_id` references `DEPARTMENTS`; `salary` must be greater than zero.
- **Projects:** `project_id` is the primary key; `project_name` is unique; `department_id` references `DEPARTMENTS`; `end_date` must be on or after `start_date` when provided; `status` must be `Planned`, `Active`, `On Hold`, or `Completed`.
- **Employee_Projects:** `(employee_id, project_id)` is the composite primary key; both columns reference their parent tables; `hours_per_week` must be greater than zero and at most 168.

All columns are `NOT NULL` unless marked `NULL allowed` in the diagram.
