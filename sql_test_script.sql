CREATE TABLE Customers (
    CustomerID NUMBER PRIMARY KEY,
    CustomerName VARCHAR2(100),
    Contact VARCHAR2(50)
);
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
CREATE TABLE Products (
    ProductID NUMBER PRIMARY KEY,
    ProductName VARCHAR2(100),
    Price NUMBER(10, 2)
);
CREATE TABLE OrderDetails (
    OrderID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    PRIMARY KEY (OrderID, ProductID)
);
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (1, 'Alice Johnson', 'alice@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (2, 'Bob Smith', 'bob@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (3, 'Charlie Brown', 'charlie@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (4, 'Diana Prince', 'diana@example.com');
INSERT INTO Customers (CustomerID, CustomerName, Contact) VALUES (5, 'Ethan Hunt', 'ethan@example.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (1, 1, TO_DATE('2024-09-01', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (2, 2, TO_DATE('2024-09-02', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (3, 3, TO_DATE('2024-09-03', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (4, 4, TO_DATE('2024-09-04', 'YYYY-MM-DD'));
INSERT INTO Orders (OrderID, CustomerID, OrderDate) VALUES (5, 5, TO_DATE('2024-09-05', 'YYYY-MM-DD'));



INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 1, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (1, 2, 2);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (2, 3, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (3, 4, 3);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (4, 5, 1);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES (5, 1, 1);

UPDATE Customers
SET Contact = 'alice.newemail@example.com'
WHERE CustomerID = 1;

UPDATE Products
SET Price = 899.99
WHERE ProductID = 1;

DELETE FROM Customers
WHERE CustomerID = 2;

SELECT O.OrderID, C.CustomerName, O.OrderDate
FROM Orders O
INNER JOIN Customers C ON O.CustomerID = C.CustomerID;

CREATE TABLE Payments (
    PaymentID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    PaymentDate DATE,
    Amount NUMBER(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
INSERT INTO Payments (PaymentID, OrderID, PaymentDate, Amount) VALUES (1, 1, TO_DATE('2024-09-06', 'YYYY-MM-DD'), 999.99);


SELECT * FROM Customers;

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (SELECT CustomerID FROM Orders);


