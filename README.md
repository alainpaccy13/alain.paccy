Project is to create the following tables in SQL with Three Entities.
Customers (CustomerID, CustomerName, Contact)
Orders (OrderID, CustomerID, OrderDate) 
Products (ProductID, ProductName, Price) 
One-to-Many Relationship: One Customer can place many Orders. 
Many-to-Many Relationship: Many Orders can contain many Products, implemented via a join table (OrderDetails)
