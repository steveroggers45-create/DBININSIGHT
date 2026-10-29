# Employee Management System ER Diagram

```mermaid
erDiagram
    DEPARTMENTS ||--o{ EMPLOYEES : employs
    DEPARTMENTS ||--o{ PROJECTS : owns
    EMPLOYEES ||--o{ EMPLOYEE_PROJECTS : assigned_to
    PROJECTS ||--o{ EMPLOYEE_PROJECTS : has_members

    DEPARTMENTS {
        int department_id PK
        varchar department_name UK
        varchar location
    }

    EMPLOYEES {
        int employee_id PK
        int department_id FK
        varchar first_name
        varchar last_name
        varchar email UK
        varchar job_title
        date hire_date
        decimal salary
    }

    PROJECTS {
        int project_id PK
        int department_id FK
        varchar project_name
        date start_date
        date end_date
        varchar status
    }

    EMPLOYEE_PROJECTS {
        int employee_id PK, FK
        int project_id PK, FK
        varchar project_role
        date assigned_date
        decimal hours_per_week
    }
```

`EMPLOYEE_PROJECTS` is the junction table for the many-to-many relationship between employees and projects. Its composite primary key prevents an employee from being assigned to the same project more than once.
