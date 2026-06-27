-- Sample Data Inserts

INSERT INTO Customers
VALUES
(1, 'Aarav Sharma', 'aarav@gmail.com', '9876543210', 'Kanpur'),
(2, 'Sneha Verma', 'sneha@gmail.com', '9876543211', 'Lucknow'),
(3, 'Rohan Gupta', 'rohan@gmail.com', '9876543212', 'Delhi');


INSERT INTO Products
VALUES
(101, 'Milk', 'Dairy', 60.00, 100),
(102, 'Bread', 'Bakery', 40.00, 80),
(103, 'Rice', 'Groceries', 500.00, 50);


INSERT INTO Orders
VALUES
(1001, 1, '2026-06-20', 100.00),
(1002, 2, '2026-06-21', 540.00),
(1003, 3, '2026-06-22', 60.00);


INSERT INTO Order_Items
VALUES
(1, 1001, 101, 1),
(2, 1001, 102, 1),
(3, 1002, 103, 1),
(4, 1003, 101, 1);
