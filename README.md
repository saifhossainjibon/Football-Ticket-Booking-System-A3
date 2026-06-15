# ⚽ Football Ticket Booking System

A complete database design and SQL query implementation for managing football match ticket bookings, developed as part of a database systems assignment.

---

## 🎯 Project Overview

This project showcases a relational database designed to handle real-world scenarios for a football ticket booking platform. It manages football fans, match schedules, and ticket booking receipts with strict data integrity and complex querying capabilities.

---

## 🗺️ Entity Relationship Diagram (ERD)

[![ERD Diagram](https://img.shields.io/badge/View-ERD_Diagram-blue?logo=google-drive)](https://drive.google.com/file/d/1aQVjcjtaEkxCqPJtL89RbMlBHhHRp0LZ/view?usp=sharing)

The ERD visualizes the database schema, showing:
- **Primary Keys (PK)** and **Foreign Keys (FK)**
- **Cardinality relationships** (One-to-Many, Many-to-One)
- **Status fields** for bookings and matches

---

## 🔗 Database Relationships

| Relationship | Cardinality | Business Logic |
|--------------|-------------|----------------|
| Users → Bookings | **One-to-Many (1:M)** | One fan can book tickets for multiple matches |
| Matches → Bookings | **One-to-Many (1:M)** | One match can have thousands of bookings |
| Bookings → Users | **Many-to-One (M:1)** | Each booking belongs to exactly one user |
| Bookings → Matches | **Many-to-One (M:1)** | Each booking is for exactly one match |

---

## 📝 SQL Queries Implemented

| # | Query Description | Key Concepts Used |
|---|-------------------|-------------------|
| 1 | Champions League matches with 'Available' status | Filtering with `WHERE` |
| 2 | Search users by name patterns | `ILIKE` for case-insensitive pattern matching |
| 3 | Bookings with NULL payment status | `IS NULL` & `COALESCE` |
| 4 | Booking details with user & match info | `INNER JOIN` on 3 tables |
| 5 | All users including those with no bookings | `LEFT JOIN` |
| 6 | Bookings with cost above average | Subquery with `AVG()` |
| 7 | Top 2 most expensive matches (skip highest) | `ORDER BY`, `LIMIT`, `OFFSET` |

---

## 🚀 How to Run

1. Clone the repository
2. Run the `QUERY.sql` file in PostgreSQL
3. Execute any query from Part 2 to see the expected output

---

## 📚 What I Gained From This Task

This project strengthened my understanding of core database concepts and their practical application:

### ✅ Database Design & Modeling
- Designed an **ERD** from scratch with proper cardinality (1:M, M:1)
- Implemented **Primary Keys**, **Foreign Keys**, and **referential integrity**
- Created **CHECK constraints** to enforce business rules (e.g., valid status values, non-negative pricing)

### ✅ Advanced SQL Proficiency
- Wrote **complex queries** using `INNER JOIN`, `LEFT JOIN`, and subqueries
- Applied **aggregate functions** (`AVG()`) with subqueries for comparative analysis
- Used **pattern matching** (`ILIKE`) for case-insensitive searches
- Handled **NULL values** gracefully with `COALESCE`
- Implemented **pagination** using `LIMIT` and `OFFSET`

### ✅ Real-World Business Logic
- Modeled ticket inventory statuses (`Available`, `Selling Fast`, `Sold Out`)
- Managed payment states (`Pending`, `Confirmed`, `Cancelled`, `Refunded`)
- Ensured data consistency between users, matches, and their bookings

---

## 📁 Repository Files

| File | Description |
|------|-------------|
| `QUERY.sql` | Complete database schema, sample data, and all SQL queries |
| `README.md` | Project documentation (you are here) |

---

## 👨‍💻 Done By:

**Saif Hossain Jibon (For Assignment Purpose)**  
*Database Design & SQL Implementation*

