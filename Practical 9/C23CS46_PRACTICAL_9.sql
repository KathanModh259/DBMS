-- Creating Sales_People Table
CREATE TABLE Sales_People (
    Snum INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    City VARCHAR(100),
    Comm DECIMAL(5,2)
);

-- Inserting Data into Sales_People Table
INSERT INTO Sales_People (Snum, Sname, City, Comm) VALUES (1001, 'Peel', 'London', 0.12);
INSERT INTO Sales_People (Snum, Sname, City, Comm) VALUES (1002, 'Serres', 'San Jose', 0.13);
INSERT INTO Sales_People (Snum, Sname, City, Comm) VALUES (1003, 'Motika', 'London', 0.11);
INSERT INTO Sales_People (Snum, Sname, City, Comm) VALUES (1004, 'Rifkin', 'Barcelona', 0.15);
INSERT INTO Sales_People (Snum, Sname, City, Comm) VALUES (1005, 'Axelord', 'New York', 0.10);

-- Creating Customer1 Table
CREATE TABLE Customer1 (
    Cnum INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL,
    City VARCHAR(100),
    Rating INT DEFAULT 10,
    Snum INT,
    CONSTRAINT fk_Sales_person FOREIGN KEY (Snum) REFERENCES Sales_People(Snum)
);

-- Inserting Data into Customer1 Table
INSERT INTO Customer1 (Cnum, Cname, City, Rating, Snum) VALUES 
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovance', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 300, 1002),
(2004, 'Grass', 'Berlin', 100, 1002),
(2006, 'Clemens', 'London', 300, 1005),
(2007, 'Pereira', 'Rome', 100, 1004);

-- Creating Order_T Table
CREATE TABLE Order_T (
    Order_no INT PRIMARY KEY,
    Amount DECIMAL(10,2),
    Odate DATE,
    Cnum INT,
    Snum INT,
    CONSTRAINT fk_Customer1_Order FOREIGN KEY (Cnum) REFERENCES Customer1(Cnum),
    CONSTRAINT fk_Sales_People_Order FOREIGN KEY (Snum) REFERENCES Sales_People(Snum)
);

-- Inserting Data into Order_T Table
INSERT INTO Order_T (Order_no, Amount, Odate, Cnum, Snum) VALUES 
(3001, 18.96, '1994-03-10', 2002, 1002),
(3002, 1900.10, '1994-03-10', 2007, 1003),
(3003, 767.19, '1994-03-10', 2001, 1001),
(3005, 5160.45, '1994-03-10', 2003, 1002),
(3006, 1098.16, '1994-03-10', 2008, 1002),
(3007, 75.75, '1994-04-10', 2001, 1001),
(3008, 4723.95, '1994-05-10', 2006, 1002),
(3009, 1713.23, '1994-04-10', 2002, 1003),
(3010, 1309.95, '1994-06-10', 2004, 1002),
(3011, 9891.00, '1994-06-10', 2006, 1001);

-- Task Queries
-- 1. Customers handled by salespeople named Peel or Motika
SELECT C.* FROM Customer1 C
JOIN Sales_People S ON C.Snum = S.Snum
WHERE S.Sname IN ('Peel', 'Motika');

-- 2. Exclude invalid orders where Amount is 0 or NULL
SELECT * FROM Order_T WHERE Amount > 0;

-- 3. Highest order values processed by salespeople for orders exceeding $3000
SELECT S.Sname, MAX(O.Amount) AS Highest_Order
FROM Order_T O
JOIN Sales_People S ON O.Snum = S.Snum
WHERE O.Amount > 3000
GROUP BY S.Sname;

-- 4. Salespeople and customers in the same city
SELECT S.Sname, C.Cname, S.City
FROM Sales_People S
JOIN Customer1 C ON S.City = C.City;

-- 5. Orders along with customer names
SELECT O.Order_no, O.Amount, C.Cname
FROM Order_T O
JOIN Customer1 C ON O.Cnum = C.Cnum;

-- 6. Customers managed by salespeople earning more than 12% commission
SELECT C.* FROM Customer1 C
JOIN Sales_People S ON C.Snum = S.Snum
WHERE S.Comm > 0.12;

-- 7. Customers with rating identical to Hoffman's
SELECT * FROM Customer1 WHERE Rating = (SELECT Rating FROM Customer1 WHERE Cname = 'Hoffman');

-- 8. Customers with ratings exceeding the average rating of San Jose
SELECT COUNT(*) FROM Customer1
WHERE Rating > (SELECT AVG(Rating) FROM Customer1 WHERE City = 'San Jose');

-- 9. Salespeople whose total orders exceed the largest single order amount
SELECT S.Sname FROM Sales_People S
JOIN Order_T O ON S.Snum = O.Snum
GROUP BY S.Sname
HAVING SUM(O.Amount) > (SELECT MAX(Amount) FROM Order_T);

-- 10. Categorized listing of customers based on rating
SELECT Cname, Rating, 
CASE WHEN Rating >= 400 THEN 'High Rating' ELSE 'Low Rating' END AS Category
FROM Customer1;