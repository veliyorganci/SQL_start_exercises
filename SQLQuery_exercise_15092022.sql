
CREATE DATABASE LibraryDB;

Use LibraryDB

CREATE SCHEMA Person;

CREATE SCHEMA Book;

---Book.Book

CREATE TABLE [Book].[Book](
[Book_ID][int] PRIMARY KEY NOT NULL,
[Book_Name][nvarchar](50) NOT NULL,
Author_ID INT NOT NULL,
Publisher_ID INT NOT NULL
);


-- create Book.Author table

CREATE TABLE [Book].[Author](
[Author_ID][int],
[Author_FirstName][nvarchar](50) NOT NULL,
[Author_LastName][nvarchar](50) NOT NULL,
);

-- create Publisher.Table

CREATE TABLE [Book].[Publisher](
[Publisher_ID][int] PRIMARY KEY IDENTITY (1,1) NOT NULL,
[Publisher_Name][nvarchar](100) NOT NULL,
);

-- create Person.Person table

CREATE TABLE [Person].[Person](
[SSN][bigint] PRIMARY KEY NOT NULL,
[Person_FirstName][nvarchar](50) NULL,
[Person_LastName][nvarchar](50) NULL
);

-- create Person.Loan table

CREATE TABLE [Person].[Loan](
[SSN] BIGINT NOT NULL,
[Book_ID] INT NOT NULL,
PRIMARY KEY ([SSN], [Book_ID])
);

-- create Person.Person_Phone table

--cretae Person.Person_Phone table

CREATE TABLE [Person].[Person_Phone](
	[Phone_Number] [bigint] PRIMARY KEY NOT NULL,
	[SSN] [bigint] NOT NULL	
	);
--cretae Person.Person_Mail table

CREATE TABLE [Person].[Person_Mail](
	[Mail_ID] INT PRIMARY KEY IDENTITY (1,1),
	[Mail] NVARCHAR(MAX) NOT NULL,
	[SSN] BIGINT UNIQUE NOT NULL	
	);

-- INSERT

	INSERT INTO Person.Person(SSN, Person_FirstName, Person_LastName)
	VALUES (12345678912, 'Ahmet', 'Y?lmaz')

	select*from Person.Person

	INSERT INTO Person.Person
	VALUES (12345678911, 'Ali', 'Y?lmaz')

	select*from Person.Person

	INSERT INTO Person.Person(SSN, Person_FirstName)
	VALUES (12345678917, 'Ahmet')

	select*from Person.Person

	INSERT INTO Person.Person
	VALUES (12345678914, 'Emel', null)

	select*from Person.Person


	-- more than one values insert

	INSERT Person.Person_Mail (Mail, SSN)
	VALUES ('ayilmaz@gmail.com', 12345678912),
		   ('aliyilmaz@gmail.com', 1233456721),
		   ('ebru@gmail.com', 32442113334)

	select*from Person.Person_Mail

------------------------------------------