CREATE SCHEMA IF NOT EXISTS project;

CREATE TABLE IF NOT EXISTS Dealership(
    dealershipID INT PRIMARY KEY,
    dealershipName TEXT,
    address TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip INT,
    manager TEXT
);

CREATE TABLE IF NOT EXISTS Employee(
    employeeID INT PRIMARY KEY,
    employeeName TEXT,
    phoneNo INT,
    address TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip INT,
    job TEXT
);

CREATE TABLE IF NOT EXISTS Car(
    vin CHAR(17) PRIMARY KEY,
    make TEXT,
    model TEXT,
    price INT
);

CREATE TABLE IF NOT EXISTS Customer(
    customerID INT PRIMARY KEY,
    customerName TEXT,
    phoneNo INT,
    address TEXT,
    street TEXT,
    city TEXT,
    state TEXT,
    zip INT
);

