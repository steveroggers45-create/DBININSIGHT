# Employee Management System Database

This folder contains a relational database design for managing departments, employees, projects, and employee project assignments.

## Files

- [`ER_Diagram.md`](./ER_Diagram.md) — ER diagram and relationship overview.
- [`Table_Definitions.md`](./Table_Definitions.md) — column definitions, constraints, and key relationships.
- [`create_tables.sql`](./create_tables.sql) — creates the four tables and their constraints.
- [`insert_sample_data.sql`](./insert_sample_data.sql) — inserts sample departments, employees, projects, and assignments.
- [`employee_management.db`](./employee_management.db) — ready-to-use SQLite database with the schema and sample data.

## Tables and relationships

- `Departments` stores department names and locations.
- `Employees` belongs to a department.
- `Projects` is owned by a department.
- `Employee_Projects` links employees and projects in a many-to-many relationship, with assignment role, date, and weekly hours.

Primary keys uniquely identify records. Foreign keys maintain the department, employee, and project relationships. The junction table uses a composite primary key of `(employee_id, project_id)`.

## Setup

Run the scripts in this order against an empty database:

1. Execute `create_tables.sql`.
2. Execute `insert_sample_data.sql`.

The sample data includes 5 departments, 20 employees, 10 projects, and 27 employee-project assignments. The SQL uses explicit integer IDs rather than database-specific auto-increment syntax.
