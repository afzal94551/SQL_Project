-- Creating Database
Create Database ABCltd;

USE ABCltd;

-- Creating Table City
CREATE TABLE City (
	ID int Primary key,
	City  Varchar(50) Not null
	);

-- Creating Table Country
CREATE TABLE Country(
	Sr_No int Primary Key,
	Country Varchar(20));

-- Creating Table Customer for Storing Customer Details

CREATE TABLE Customer (
	Customer_ID varchar(8)  Primary key,
	Customer_Name varchar(50) NOT NULL,
	Address varchar (100) NOT NULL,
	City_ID int NOT NULL,
	Country_ID int NOT NULL,
	Segment_ID int NOT NULL,
	Agent_ID varchar (6) NOT NULL);

-- Creating Head Count Table 


CREATE TABLE Head_Count(
	Employees_ID Varchar(50) Primary key,
	Name varchar(50) NOT NULL,
	Gender varchar(6) NULL,
	Job_Grade varchar(20) NULL,
	Job_Title varchar(20) NULL,
	Employement_type varchar(10) NULL,
	Location varchar(20) NULL,
	Job_Department varchar(10) NULL,
	Home_Department varchar(40) NULL,
	Employee_Type varchar(7) NULL,
	Job_Type varchar(7) NULL,
	DOB date NOT NULL,
	DOJ date NOT NULL,
	LWD date NULL,
	Natur varchar(5) NULL,
	Reason_For_Leaving varchar(50) NULL,
	TL_Employee_ID varchar(6) NULL,
	TL_Name varchar(50) NOT NULL,
	Manager_Employee_ID varchar(6) NULL,
	Manager_Name varchar(50) NOT NULL,
	Director_Employee_ID varchar(6) NULL,
	Director_Name varchar(50) NOT NULL,
	VP_Employee_ID varchar(6) NULL,
	VP_Name varchar(50) NOT NULL,
	Salary int NOT NULL,
	Persent_Count_MIS int NOT NULL,
	Leaves int NOT NULL);

-- Creating Table Customer Segment
CREATE TABLE Customer_Segment(
	ID int Primary key,
	Segment Varchar(10));

-- Creating Product Table

CREATE TABLE Product(
	Product_ID varchar(50) Primary key,
	Product varchar(50) NOT NULL,
	Model varchar(50) NOT NULL);


-- Creating Purchase Table


CREATE TABLE  Purchase(
	Order_ID Int Primary key,
	Product_ID varchar(8) NOT NULL,
	Date date NOT NULL,
	QTY Int NOT NULL,
	Year Int NOT NULL,
	Prices int NOT NULL);

-- Creating Sales Table

CREATE TABLE Sales(
	Order_ID varchar(14) NOT NULL,
	Order_Date date NOT NULL,
	Ship_Date date NOT NULL,
	Ship_Mode_ID Int NOT NULL,
	Customer_ID varchar(8) NOT NULL,
	Product_ID varchar(8) NOT NULL,
	Price int NOT NULL,
	Quantity Int NOT NULL,
	Total_Price bigint NOT NULL,
	Discount int NOT NULL,
	Sales_Amount bigint NOT NULL);

	-- Creating Sales Rating Table 
CREATE TABLE Sales_Rating(
	Order_ID varchar(14) Primary key,
	Rating int NOT NULL);

-- Creating Ship Mode Table

CREATE TABLE Ship_Mode(
	ID int primary key,
	Ship_Mode varchar(50) NOT NULL); 






