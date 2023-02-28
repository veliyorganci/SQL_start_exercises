CREATE DATABASE Manufacturer;

USE Manufacturer;
CREATE TABLE Product(
	prod_id INT PRIMARY KEY NOT NULL,
	prod_name VARCHAR(50),
	quantitiy INT
	);
	
CREATE TABLE Component(
	comp_id INT PRIMARY KEY NOT NULL,
	comp_name VARCHAR(50),
	[description] VARCHAR(50),
	quantity_comp INT
	);
	
CREATE TABLE Supplier(
	supp_id INT PRIMARY KEY NOT NULL,
	supp_name VARCHAR(50),
	supp_location VARCHAR(50),
	supp_country VARCHAR(50),
	is_active BIT
	);
CREATE TABLE Prod_Comp(
	prod_id INT,
	comp_id INT,
	PRIMARY KEY (prod_id, comp_id),
	FOREIGN Key (prod_id) REFERENCES Product (prod_id),
	FOREIGN KEY (comp_id) REFERENCES Component (comp_id)
	);
CREATE TABLE Comp_Supp(
	supp_id INT,
	comp_id INT,
	order_date DATE,
	quantity INT,
	PRIMARY KEY (supp_id, comp_id),
	FOREIGN KEY (supp_id) REFERENCES Supplier (supp_id),
	FOREIGN KEY (comp_id) REFERENCES Component (comp_id)
	);
