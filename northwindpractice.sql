--1.
      SELECT * FROM customers;

--2. 
      SELECT DISTINCT Country FROM customers;

--3.   
      SELECT * FROM customers WHERE CustomerID LIKE 'BL%';
   -- https://www.w3schools.com/SQL/sql_like.asp

--4.   
      SELECT * FROM orders WHERE orderID BETWEEN 10248 AND 10347;
    -- two options  
      SELECT COUNT(OrderID)
      FROM orders
      WHERE orderID BETWEEN 10248 AND 10347; 
   -- confirming that the orders add up to 100
   -- https://www.w3schools.com/SQL/sql_count_avg_sum.asp

--5. 
      SELECT * FROM customers WHERE PostalCode IN (1010, 3012, 12209, 05023);
    -- https://www.w3schools.com/SQL/sql_and_or.asp
    --https://www.w3schools.com/Sql/sql_in.asp

-- 6.  
      SELECT * FROM orders WHERE ShipRegion IS NOT NULL;
    -- IS NOT NULL / IS NULL / NULL is not a value ... https://stackoverflow.com/questions/5658457/not-equal-operator-on-null

-- 7.  
      SELECT * FROM customers ORDER BY Country, city;
    -- https://www.w3schools.com/SQL/sql_orderby.asp

-- 8.  
      INSERT INTO customers (CustomerID, CompanyName, ContactName, Address, City, Country, Phone) VALUES ('BIGAL', 'Binary Gallons', 'Toady Turnstyle',' 1756 New Road', 'Phoenix', 'USA', '(345) 478-3532';

-- 9.  
      UPDATE orders SET ShipRegion='EuroZone' WHERE ShipCountry = 'France';
    -- SET SQL_SAFE_UPDATES=0;

-- 10. 
      DELETE FROM `order details` WHERE Quantity=1;
    --if you double click on the table name it gives you its complete annotation

--11.   
      SELECT MAX(Quantity)
      FROM `order details`;

      SELECT MIN(Quantity)
      FROM `order details`;

      SELECT AVG(Quantity)
      FROM `order details`;

-- 12.   
      SELECT OrderId,
        AVG(Quantity) as OrderAverageQuantity,
        MAX(Quantity) as OrderMaxQuantity,
        MIN(Quantity) as OrderMinQuantity
      FROM `order details`
      GROUP BY OrderID;
     --https://www.essentialsql.com/get-ready-to-learn-sql-6-how-to-group-and-summarize-your-results/

-- 13.    
       SELECT CustomerID FROM orders
       WHERE OrderID=10290;
       -- when having an issue with computation double check syntax. You could have the logic write but capitalization or annotation off. 

-- 14.      
       SELECT *  -- includes all columns from both tables INNER JOIN
       FROM orders 
       INNER JOIN customers ON orders.CustomerID = customers.CustomerID;

       SELECT *  -- includes all columns from both tables INNER JOIN
       FROM orders 
       LEFT JOIN customers 
       ON orders.CustomerID = customers.CustomerID
       ORDER BY  customers.CustomerID;

       SELECT *  -- includes all columns from both tables INNER JOIN
       FROM orders 
       RIGHT JOIN customers 
       ON orders.CustomerID = customers.CustomerID
       ORDER BY  customers.CustomerID;

-- 15.      
       SELECT employees.EmployeeID, employees.City, ShipCity, ShipCountry  
       FROM orders
       JOIN employees
       ON orders.EmployeeID = employees.EmployeeID WHERE employees.City = 'London';  --sometimes you have to think out what you are trying to do. Get the WHERE at the end. 
                                                                                       -- see where we sought EmployeeID WHERE employees.City = 'London';

-- 16.      
       SELECT ShipName, orders.OrderID, Discontinued 
       FROM orders
       JOIN `order details`
       ON orders.OrderID = `order details`.OrderID
       JOIN products
       ON `order details`.ProductID = products.ProductID WHERE products.Discontinued = '1';

-- 17.      
       SELECT FirstName FROM employees WHERE ReportsTo IS NULL; -- IS NULL goes right after the column and the WHERE function no = is required or ' ' .


-- 18.   
       SELECT FirstName FROM employees WHERE ReportsTo = '2';




