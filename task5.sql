-- Drop tables if they already exist
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Custom;

-- 1. Create Customers table (named "Custom" as you used)
CREATE TABLE Custom (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

-- 2. Insert data into Custom (Customers)
INSERT INTO Custom (CustomerID, Name, City)
VALUES
(1, 'Anand', 'Hyderabad'),
(2, 'Rama', 'Delhi'),
(3, 'Pavan', 'Mumbai'),
(4, 'Deeksha', 'Chennai');

-- 3. Create Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Custom(CustomerID) -- fixed to reference "Custom" not "Customers"
);

-- 4. Insert data into Orders (removed invalid CustomerID = 5 or add to Custom first)
INSERT INTO Orders VALUES
(101, 1, 'Laptop'),
(102, 2, 'Tablet'),
(103, 1, 'Keyboard');

-- 5. Perform JOIN operations

-- INNER JOIN
SELECT Custom.Name, Orders.Product
FROM Custom
INNER JOIN Orders ON Custom.CustomerID = Orders.CustomerID;

-- LEFT JOIN
SELECT Custom.Name, Orders.Product
FROM Custom
LEFT JOIN Orders ON Custom.CustomerID = Orders.CustomerID;

-- RIGHT JOIN
SELECT Custom.Name, Orders.Product
FROM Custom
RIGHT JOIN Orders ON Custom.CustomerID = Orders.CustomerID;

-- FULL OUTER JOIN (simulated using UNION of LEFT and RIGHT)
SELECT Custom.Name, Orders.Product
FROM Custom
LEFT JOIN Orders ON Custom.CustomerID = Orders.CustomerID

UNION

SELECT Custom.Name, Orders.Product
FROM Custom
RIGHT JOIN Orders ON Custom.CustomerID = Orders.CustomerID;