# SQL Employee Database System

A structured SQL project demonstrating relational database design and progressive query implementation using an Employee schema.

This project covers SQL concepts from basic filtering to advanced nested queries and full multi-table relational schema design.

All queries were implemented and tested locally using SQLite in VS Code.

---

## 📌 Project Overview

This project simulates a complete Employee Database system and includes:

- Multi-table schema creation
- Constraint implementation
- Sample data insertion
- Basic SQL queries
- Advanced filtering logic
- Aggregate functions
- Nested and subqueries
- Relational table design with foreign keys

---

## 📂 Project Structure

| Module | File Name | Description |
|--------|------------|-------------|
| Core | README.md | Project documentation |
| 01 | 01_basic_queries.sql | Basic SELECT, WHERE, AND, OR, IN, ORDER BY queries |
| 02 | 02_advanced_queries.sql | Advanced filtering and conditional logic |
| 03 | 03_aggregate_functions.sql | COUNT, SUM, AVG, MIN, MAX, GROUP BY, HAVING |
| 04 | 04_nested_queries.sql | Subqueries and advanced salary/department logic |
| 05 | schema_creation.sql | Multi-table schema creation |
| 05 | constraints_definition.sql | Primary key, foreign key and CHECK constraints |
| 05 | sample_data.sql | Data insertion scripts for relational schema |

---

## 🏗 Database Implementation (Module 05)

The relational schema includes:

- EMPLOYEE
- DEPARTMENT
- PROJECT
- WORKS_ON
- DEPT_LOCATIONS

### schema_creation.sql
- Creates all required tables
- Defines data types
- Establishes primary keys

### constraints_definition.sql
- Implements NOT NULL constraints
- Applies CHECK conditions
- Defines FOREIGN KEY relationships
- Enforces data validation rules

### sample_data.sql
- Inserts structured test data
- Validates referential integrity
- Populates relational tables

---

## 🚀 Query Modules

### 01_basic_queries.sql
Covers:
- SELECT statements
- WHERE clause
- Logical operators (AND / OR)
- IN operator
- NULL handling
- Column aliasing
- ORDER BY sorting

---

### 02_advanced_queries.sql
Covers:
- Complex filtering
- Multi-condition queries
- Salary-based logic
- Department-based filtering
- Conditional expressions

---

### 03_aggregate_functions.sql
Covers:
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- HAVING clause

---

### 04_nested_queries.sql
Covers:
- Subqueries
- Salary comparison logic
- Department-based nested filtering
- Second highest salary retrieval
- Advanced conditional queries

---

## 🛠 Technologies Used

- SQL
- SQLite
- VS Code
- SQLTools Extension

---

## ▶ Execution Order

1. Run `schema_creation.sql`
2. Run `constraints_definition.sql`
3. Run `sample_data.sql`
4. Execute query modules in order:
   - 01_basic_queries.sql
   - 02_advanced_queries.sql
   - 03_aggregate_functions.sql
   - 04_nested_queries.sql

---

## 📚 SQL Concepts Demonstrated

- Relational schema design
- Primary and foreign key implementation
- Constraint management
- Data insertion and validation
- Logical query construction
- Aggregate analysis
- Nested query execution
- Structured SQL organization

---

## 💡 Learning Outcome

This project reflects structured SQL progression from foundational queries to advanced relational schema design and nested logic implementation.

It demonstrates hands-on relational database execution in a local development environment.

---

⭐ Feel free to explore, fork, and extend this project.
