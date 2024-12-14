-- create new data base
CREATE DATABASE Library
-- viwe already created databases
SHOW DATABASES
-- select a database
USE Library


-- create new data base
CREATE DATABASE Office

-- already created database
SHOW DATABASES

-- select a database
USE Office;
CREATE TABLE Employee(
EmpID varchar(10),
Fname varchar(100) NOT NULL,
Lname varchar(100),
DOB Date NOT NULL,
Salary float NOT NULL Check(Salary>10000),
City varchar(100) NOT NULL,
Department varchar(100) NOT NULL,
Primary key(EmpID));

-- viwe table in databases
SHOW TABLES

-- delete table
DROP TABLE Employee

-- describe table
DESC Employee

-- remove column from table
ALTER TABLE Employee DROP column Department

-- add new column
ALTER TABLE Employee ADD column Dpartment varchar(100)

-- remove primary key
ALTER TABLE Employee DROP Primary key

-- add new  primary key
ALTER TABLE Employee ADD Primary key(EmpID)