# task5
# SQL Join Practice – Customers & Orders

## 📌 Objective
The goal of this task is to understand and demonstrate SQL JOIN operations using two related tables: `Custom` (Customers) and `Orders`.

## 🗂 Tables Overview

### ✅ Custom (Customers)
| Column      | Type        | Description               |
|-------------|-------------|---------------------------|
| CustomerID  | INT (PK)    | Unique ID for each customer |
| Name        | VARCHAR(50) | Customer name             |
| City        | VARCHAR(50) | Customer's city           |

### ✅ Orders
| Column      | Type        | Description                         |
|-------------|-------------|-------------------------------------|
| OrderID     | INT (PK)    | Unique ID for each order           |
| CustomerID  | INT (FK)    | Refers to a customer in `Custom`   |
| Product     | VARCHAR(50) | Name of the product ordered        |

> `CustomerID` in `Orders` is a foreign key referencing `CustomerID` in `Custom`.

---

## 🧪 Sample Data

- Some customers have multiple orders
- Some customers have no orders
- One order has no matching customer (`CustomerID = 6`)

---

🚀 Tools Used
MySQL Workbench (or) DB Browser for SQLite

GitHub for version control and submission

