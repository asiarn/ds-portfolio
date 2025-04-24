# Library Management System – SQL Schema & Data Simulation

This project designs and simulates a relational database system for managing multiple libraries. It includes mock data generation using Python and schema creation via SQL.

---

## Dataset & Schema

- Simulated data for:
  - Users (names, contacts, areas)
  - Books, categories, authors, publishers
- Relational schema includes:
  - Lookup tables: `authors`, `publishers`, `categories`
  - Main entities: `books`, `members`, `transactions`, etc.

All tables are designed with normalized structure and proper key relationships.

---

## Objectives

- Model a relational system for library operations
- Generate realistic sample data using `Faker`
- Create SQL schema and example inserts/queries

---

## Tools Used

- **Python** (data generation using `Faker`, `Tabulate`)
- **PostgreSQL** (schema design, DDL)
- **Jupyter Notebook** for prototyping
- **SQL** for creating and managing tables
