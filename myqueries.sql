CREATE DATABASE SalesDatabase ;

USE SalesDatabase;

CREATE TABLE Products(
	ProductID INT PRIMARY KEY,
	ProductName VARCHAR(255),
	Price DECIMAL(10,2),
	Category VARCHAR(255)
);

CREATE TABLE Customers(
	CustomerID INT PRIMARY KEY,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	Email VARCHAR(255),
	PhoneNumber VARCHAR(20),
	Address VARCHAR(255),
	City VARCHAR(255),
	State VARCHAR(255),
	ZipCode VARCHAR(10)
);

CREATE TABLE Employees(
	EmployeeID INT PRIMARY KEY,
	FirstName VARCHAR(255),
	LastName VARCHAR(255),
	HireDATE DATE,
	Email VARCHAR(255),
	PhoneNumber VARCHAR(255),
	Address VARCHAR(255),
	City VARCHAR(255),
	State VARCHAR(255),
	ZipCode VARCHAR(10)
);

CREATE TABLE Sales(
	SaleID INT PRIMARY KEY,
	ProductID INT,
	CustomerID INT,
	EmployeeID INT, 
	SaleDate DATE,
	Quantity INT,
	TotalAmount DECIMAL(10,2),
	FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
