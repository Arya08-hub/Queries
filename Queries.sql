SELECT country, COUNT(*) AS num_persons
FROM Persons
GROUP BY country;

SELECT country, COUNT(*) AS num_persons
FROM Persons
GROUP BY country
ORDER BY num_persons DESC;

SELECT country, AVG(rating) AS avg_rating
FROM Persons
GROUP BY country
HAVING AVG(rating) > 3.0;

SELECT country
FROM Persons
WHERE rating = (
    SELECT rating
    FROM Persons
    WHERE country = 'USA'
);


SELECT country
FROM Country
WHERE population > (
    SELECT AVG(population)
    FROM Country
);

CREATE DATABASE Product;

USE Product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(10),
    Country VARCHAR(50)
);



CREATE VIEW customer_info AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'USA';


CREATE VIEW Customer_details AS
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, Email, Phone_no, State
FROM Customer;


UPDATE Customer
SET Phone_no = 'NewPhoneNumber'
WHERE State = 'California';

SELECT State, COUNT(*) AS num_customers
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS num_customers
FROM Customer_details
GROUP BY State;


SELECT *
FROM Customer_details
ORDER BY State ASC;
