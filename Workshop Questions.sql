USE cardealerships;

-- 1. Showing all dealerships --
SELECT * 
FROM dealerships;

-- 2. Showing all cars from a specific dealership.

SELECT *
FROM vehicles
JOIN inventory ON vehicles.VIN = inventory.VIN
WHERE dealership_id = 1;

-- 3.  Find car by VIN--

SELECT *
FROM vehicles
WHERE VIN = 'ABC123XYZ45678901';

-- 4.  Find dealership where car is located, by VIN

SELECT *
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
WHERE VIN = 'DEF456UVW78901234';

-- 5. Find all dealerships that have a specific car type

SELECT *
FROM dealerships
JOIN inventory ON dealerships.dealership_id = inventory.dealership_id
JOIN vehicles ON inventory.VIN = vehicles.VIN
WHERE make = 'Toyota' AND color = 'Blue';

-- 6. Where all sales information for a specific dealer within a range

SELECT *
FROM sales_contracts
WHERE sale_date BETWEEN '2023-01-01' AND '2023-12-31';

