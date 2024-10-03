# PROBLEM STATEMENT
# Overview 

This database management system is designed to handle customer orders, products, and order details. It consists of four primary tables: Customers, Orders, Products, and OrderDetails. The database supports operations such as creating, reading, updating, and deleting data, as well as performing joins and subqueries to retrieve related information.
## codes
## Table Customer
```sql
 CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Contact VARCHAR2(50)
);
`````
##  Table orders
```sql
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
````
## table Products 
```sql
CREATE TABLE Products (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(100),
    Price NUMBER(10, 2)
);
`````
## Table Order details 
```sql
CREATE TABLE OrderDetails (
    OrderID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    PRIMARY KEY (OrderID, ProductID)
);
```````
## Insert Data into Customers table
```sql
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (1, 'Alice Johnson', 'alice@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (2, 'Bob Smith', 'bob@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (3, 'Charlie Brown', 'charlie@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (4, 'Diana Prince', 'diana@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (5, 'Ethan Hunt', 'ethan@example.com');
`````
## insert data into orders
```sql
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (1, 1, TO_DATE('2024-09-01', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (2, 2, TO_DATE('2024-09-02', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (3, 3, TO_DATE('2024-09-03', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (4, 4, TO_DATE('2024-09-04', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (5, 5, TO_DATE('2024-09-05', 'YYYY-MM-DD'));
`````

## insert data into Order details 
```sql

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 1, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 2, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (2, 3, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (3, 4, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (4, 5, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (5, 1, 1);
``````
## Update Customers
```sql
UPDATE Customers
SET Contact = 'alice.newemail@example.com'
WHERE CustomerID = 1;
``````
## Update Products data
```sql
UPDATE Products
SET Price = 899.99
WHERE ProductID = 1;
`````
## Delete from Customer data
```sql
DELETE FROM Customers
WHERE CustomerID = 2;
`````
## Create Relationship 
```sql
SELECT O.OrderID, C.CustomerName, O.OrderDate
FROM Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID;
`````
## create table payment 
```sql
CREATE TABLE Payments (
    PaymentID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    PaymentDate DATE,
    Amount NUMBER(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
``````
## insert into payment data
```sql
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount) VALUES (1, 1, TO_DATE('2024-09-06', 'YYYY-MM-DD'), 999.99);
`````

## Display Customer table
```sql
SELECT * FROM Customers;
`````
## display custmer name
```sql
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);
``````
# Image about Customer table contents
![Alt text of the image, OPtional](assets/images/1.png)
# Image about Order
![Alt text of the image, OPtional](assets/images/orders.png)
# image about Order detail
![Alt text of the image, OPtional](assets/images/Orderdetails.png)
# image about payment
![Alt text of the image, OPtional](assets/images/payment.png)
# Image about Product 
![Alt text of the image, OPtional](assets/images/product.png)
# Image about Customer table contents
![Alt text of the image, OPtional](assets/images/ifotooo.png)


