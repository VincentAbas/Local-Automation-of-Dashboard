create database SalesData;

use SalesData;

create table Sales (
	OrderID int identity(1,1) primary key,
	CustomerName varchar(100),
	Product varchar(100),
	Quantity int,
	Price decimal(10,2),
	OrderData Date
);



select * from Sales;

insert into Sales (CustomerName, Product, Quantity, Price, OrderData)
values
('Alice Johnson', 'Laptop', 1, 899.99, '2024-01-10'),
('Bob Smith', 'Mouse', 2, 25.50, '2024-01-11'),
('Charlie Lee', 'Keyboard', 1, 45.00, '2024-01-12'),
('Dana White', 'Monitor', 2, 150.75, '2024-01-13'),
('Eve Torres', 'USB-C Hub', 1, 29.99, '2024-01-14');


insert into Sales (CustomerName, Product, Quantity, Price, OrderData)
values
('Johnson', 'Monitor', 1, 899.99, '2024-04-18'),
('Smith', 'Mouse', 2, 25.50, '2024-02-13'),
('Lee', 'USB-C Hub', 1, 45.00, '2024-05-15'),
('White', 'Laptop', 2, 150.75, '2024-06-16'),
('Torres', 'Monitor', 1, 29.99, '2024-03-17');

insert into Sales (CustomerName, Product, Quantity, Price, OrderData)
values
('Smith', 'Monitor', 5, 5000.00, '2024-06-18');