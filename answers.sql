--question 1
create database OrdersDB;
use OrdersDB;
-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- OrderProducts Table
CREATE TABLE OrderProducts (
    OrderProductID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');



INSERT INTO OrderProducts (OrderID, Product)
VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');



SELECT o.OrderID, o.CustomerName, op.Product
FROM Orders o
JOIN OrderProducts op ON o.OrderID = op.OrderID
ORDER BY o.OrderID;





--question 2
-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    Product VARCHAR(50),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);





INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');




INSERT INTO OrderDetails (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);





SELECT o.OrderID, o.CustomerName, od.Product, od.Quantity
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
ORDER BY o.OrderID;
