# ⚽ Football Ticket Booking System

A database design and SQL query implementation for a football ticket booking system.

---

## 📋 Overview

This project demonstrates a relational database design for managing football match ticket bookings, including user management, match scheduling, and booking transactions.

---

## 🔗 ERD Relationships

| Relationship | Cardinality |
|--------------|-------------|
| Users → Bookings | One-to-Many (1:M) |
| Matches → Bookings | One-to-Many (1:M) |
| Bookings → Users | Many-to-One (M:1) |
| Bookings → Matches | Many-to-One (M:1) |

---

## 📝 SQL Queries

| # | Description |
|---|-------------|
| 1 | Champions League matches with 'Available' status |
| 2 | Search users by name starting with 'Tanvir' or containing 'Haque' (case-insensitive) |
| 3 | Bookings with NULL payment status replaced with 'Action Required' |
| 4 | Booking details with user name and match fixture (INNER JOIN on 3 tables) |
| 5 | All users including those with no bookings (LEFT JOIN) |
| 6 | Bookings with total cost above average cost |
| 7 | Top 2 most expensive matches skipping the highest (ORDER BY, LIMIT, OFFSET) |

---

## 📁 Files

| File | Description |
|------|-------------|
| `QUERY.sql` | Complete database setup, sample data, and all SQL queries |
| `README.md` | Project documentation |

---

## 🚀 How to Run

1. Run the `QUERY.sql` file in your PostgreSQL database
2. Execute any query from Part 2 to see the expected output

---

## 👤 Author

Saif Hossain Jibon (for Assignment Purpose)
