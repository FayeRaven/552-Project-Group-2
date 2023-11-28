
# These blocks retrieve the VIN of cars of a specific make.
# With a user interface, the users could pass values into a single query to reduce the number of duplicate queries.
SELECT v.vin FROM car v WHERE v.make = 'Nissan' AND v.dealershipID = 1;
SELECT v.vin FROM car v WHERE v.make = 'Ford' AND v.dealershipID = 1;
SELECT v.vin FROM car v WHERE v.make = 'Porsche' AND v.dealershipID = 1;
SELECT v.vin FROM car v WHERE v.make = 'Mitsubishi' AND v.dealershipID = 3;

# These blocks retrieve the managers of each dealership, but 'job' can be changed
# so it retrieves the employees in any job type
SELECT e.employeeName FROM employee e WHERE e.job = 'Manager' AND e.dealershipID = 1;
SELECT e.employeeName FROM employee e WHERE e.job = 'Manager' AND e.dealershipID = 2;
SELECT e.employeeName FROM employee e WHERE e.job = 'Manager' AND e.dealershipID = 3;

# This block retrieves the total sales of a particular dealership.
# With a user interface, the users could pass values into a single query to reduce the number of duplicate queries.
SELECT SUM(p.price) AS TotalSales FROM car p WHERE p.dealershipID = 1 AND p.salesperson <> 0;
SELECT SUM(p.price) AS TotalSales FROM car p WHERE p.dealershipID = 2 AND p.salesperson <> 0;
SELECT SUM(p.price) AS TotalSales FROM car p WHERE p.dealershipID = 3 AND p.salesperson <> 0;

# This block returns the name of the customer and dealerships that share a zip code.
SELECT c.customerName, d.dealershipName FROM customer c, dealership d WHERE c.zip = d.zip;

# This block returns the customer names of customers that bought cars at a particular dealership
SELECT c.customerName FROM customer c, car d WHERE c.vin = d.vin AND d.dealershipID = 1;
SELECT c.customerName FROM customer c, car d WHERE c.vin = d.vin AND d.dealershipID = 2;
SELECT c.customerName FROM customer c, car d WHERE c.vin = d.vin AND d.dealershipID = 3;

# This query simply retrieves the total price of all inventory that a dealership has in stock
SELECT SUM(p.price) AS TotalInventoryPrice FROM car p WHERE p.dealershipID = 1 AND p.salesperson = 0;
SELECT SUM(p.price) AS TotalInventoryPrice FROM car p WHERE p.dealershipID = 2 AND p.salesperson = 0;
SELECT SUM(p.price) AS TotalInventoryPrice FROM car p WHERE p.dealershipID = 3 AND p.salesperson = 0;

# This query returns the vin numbers of cars that are less than or equal to $15000 from dealership 1
SELECT c.vin FROM car c WHERE c.price <= 15000 AND c.dealershipID = 1;