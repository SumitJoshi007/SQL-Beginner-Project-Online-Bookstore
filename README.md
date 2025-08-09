# 📚 SQL Beginner Project - Online Bookstore

A beginner-friendly SQL project that simulates an **Online Bookstore Database**.  
It contains tables for **Books**, **Customers**, and **Orders**, with sample data and 10 real-world SQL queries.

---

## 🚀 Overview
This project is designed for beginners learning SQL.  
It covers:
- Creating databases and tables
- Inserting sample data
- Writing SQL queries for data retrieval and analysis
- Using `SELECT`, `WHERE`, `JOIN`, `GROUP BY`, `ORDER BY`, and aggregate functions

---

## 🗂 Database Structure
### **Books Table**
| Column   | Type         | Description         |
|----------|-------------|---------------------|
| BookID   | INT (PK)    | Unique book ID       |
| Title    | VARCHAR     | Name of the book     |
| Author   | VARCHAR     | Author name          |
| Price    | DECIMAL     | Price in INR         |
| Stock    | INT         | Available stock      |

### **Customers Table**
| Column     | Type       | Description         |
|------------|-----------|---------------------|
| CustomerID | INT (PK)  | Unique customer ID   |
| Name       | VARCHAR   | Customer name        |
| City       | VARCHAR   | City name            |

### **Orders Table**
| Column     | Type       | Description                   |
|------------|-----------|--------------------------------|
| OrderID    | INT (PK)  | Unique order ID                |
| CustomerID | INT (FK)  | Links to Customers table       |
| BookID     | INT (FK)  | Links to Books table           |
| Quantity   | INT       | Number of books ordered        |
| OrderDate  | DATE      | Date of order                  |

---

## 📌 SQL Queries Included
1. Display all books available in the store
2. Show only title and price of all books
3. List customers from a specific city
4. Show all orders with customer name, book title, and order date
5. Find the most expensive book
6. Count customers from each city
7. Show total sales amount for each order
8. Calculate total revenue from all orders
9. Find books with stock less than 10
10. Show orders placed on a specific date

---

## 🛠 How to Run This Project
1. Open your SQL environment (MySQL, PostgreSQL, etc.)
2. Create a database:
```sql
CREATE DATABASE BookstoreDB;
USE BookstoreDB;
3. Run the CREATE TABLE statements from the schema.sql file
4. Insert sample data from data.sql
5. Run the queries from queries.sql to test

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

🎯 Learning Outcomes
By completing this project, you'll learn:
  - How to create and manage databases
  - How to join multiple tables
  - How to use aggregate functions for reporting
  - How to filter and sort results
