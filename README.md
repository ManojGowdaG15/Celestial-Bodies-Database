# 🌌 Celestial Bodies Database

A PostgreSQL database project that models the relationships between galaxies, stars, planets, and moons. Built as part of the **freeCodeCamp Relational Database Certification**.

## 📌 Project Overview

The Celestial Bodies Database is designed to organize and manage astronomical information using a relational database structure.

It demonstrates how celestial objects are connected through primary keys and foreign keys, while applying essential SQL concepts such as constraints, data types, relationships, and data manipulation.

## 🛠️ Technologies Used

- **PostgreSQL** – Relational database management system
- **SQL** – Database creation, table design, and data manipulation
- **psql** – PostgreSQL command-line interface

## 🗂️ Database Structure

The database is named `universe` and contains five tables.

| Table | Description |
|---|---|
| `galaxy` | Stores galaxy information |
| `star` | Stores stars belonging to galaxies |
| `planet` | Stores planets orbiting stars |
| `moon` | Stores moons orbiting planets |
| `moon_types` | Stores different moon classifications |

## 🔗 Entity Relationships

The database follows this relational structure:

```text
Galaxy
  |
  | One-to-Many
  |
 Star
  |
  | One-to-Many
  |
 Planet
  |
  | One-to-Many
  |
 Moon

Moon Types
```

- Each star references a galaxy through `galaxy_id`.
- Each planet references a star through `star_id`.
- Each moon references a planet through `planet_id`.
- Moon types are stored in a separate classification table.

## 📊 Database Contents

| Table | Number of Records |
|---|---:|
| Galaxy | 6 |
| Star | 6 |
| Planet | 12 |
| Moon | 22 |
| Moon Types | 3 |
| **Total** | **49** |

## 🧠 SQL Concepts Demonstrated

- Database creation and connection
- Table creation using `CREATE TABLE`
- Primary keys with auto-incrementing `SERIAL`
- Foreign key relationships
- `UNIQUE` and `NOT NULL` constraints
- Data types: `INT`, `NUMERIC`, `VARCHAR`, `TEXT`, and `BOOLEAN`
- Data insertion using `INSERT INTO`
- Data verification using `SELECT`
- Table inspection using PostgreSQL commands

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/Celestial-Bodies-Database.git
```

### 2. Navigate to the project directory

```bash
cd Celestial-Bodies-Database
```

### 3. Create the database

Make sure PostgreSQL is installed and running.

```bash
psql -U postgres
```

```sql
CREATE DATABASE universe;
\q
```

### 4. Import the database

Run the following command from your terminal:

```bash
psql -U postgres -f universe.sql
```

This SQL file recreates the database, tables, relationships, constraints, and records.

## 📁 Repository Structure

```text
Celestial-Bodies-Database/
│
├── universe.sql
└── README.md
```

## 🎓 Learning Outcome

Through this project, I gained practical experience in designing relational databases, establishing relationships between tables, applying SQL constraints, and managing structured data using PostgreSQL.

## 👨‍💻 Author

**Manoj Gowda G**

- GitHub: [ManojGowdaG15](https://github.com/ManojGowdaG15)
- LinkedIn: [Manoj Gowda G](https://linkedin.com/in/manojgowdag/)

## 📜 Certification

**freeCodeCamp – Relational Database Certification**

Project: Build a Celestial Bodies Database

---

⭐ If you find this project useful, feel free to explore the repository!