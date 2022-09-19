CREATE DATABASE Manufacturer;

Use Manufacturer;

CREATE TABLE Product 
(
prod_ID INT PRIMARY KEY NOT NULL,
prod_Name nvarchar(50) NOT NULL,
quantity INT NOT NULL,
);

CREATE TABLE Supplier 
(
supp_ID INT PRIMARY KEY NOT NULL,
supp_Name nvarchar(50) NOT NULL,
supp_location nvarchar(50) NOT NULL,
supp_country nvarchar(50) NOT NULL,
is_active Bit NOT NULL,
);

Create Table Prod_Comp

(
prod_ID INT  NOT NULL,
comp_ID INT NOT NULL,
quantity_comp INT NOT NULL,
PRIMARY KEY (prod_ID, comp_ID)
);

Create Table Comp_Supp

(
supp_ID INT  NOT NULL,
comp_ID INT NOT NULL,
order_date date NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (supp_ID, comp_ID)
);

Create Table Component

(
comp_ID INT PRIMARY KEY NOT NULL,
comp_Name nvarchar(50) NOT NULL,
description nvarchar(50) NOT NULL,
quantity_comp INT NOT NULL,
);
