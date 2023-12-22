USE CarDealerships;

-- Insert data into dealerships table
INSERT INTO dealerships (name, address, phone)
VALUES
    ('XYZ Auto Dealers', '123 Main St', '555-1234'),
    ('ABC Car Sales', '456 Oak St', '555-5678'),
    ('123 Motors', '789 Elm St', '555-9101');

-- Insert data into vehicles table
INSERT INTO vehicles (VIN, make, model, year, Color, mileage, fuel_type, transmission_type, SOLD)
VALUES
    ('ABC123XYZ45678901', 'Toyota', 'Camry', 2020, 'Blue', 15000, 'Gasoline', 'Automatic', 0),
    ('DEF456UVW78901234', 'Ford', 'F-150', 2019, 'Red', 20000, 'Diesel', 'Automatic', 0),
    ('GHI789JKL01234567', 'Honda', 'Civic', 2021, 'Silver', 10000, 'Gasoline', 'Manual', 0);

-- Insert data into inventory table
INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, 'ABC123XYZ45678901'),
    (2, 'DEF456UVW78901234'),
    (3, 'GHI789JKL01234567');

-- Insert data into sales_contracts table
INSERT INTO sales_contracts (VIN, vehicle_id, buyer_name, seller_name, sale_date, sale_price, payment_method, payment_due_date, payment_status, salesperson_id)
VALUES
    ('ABC123XYZ45678901',1, 'John Doe', 'XYZ Auto Dealers', '2023-01-15', 25000.00, 'Credit Card', '2023-02-15', 'Pending', 101),
    ('DEF456UVW78901234',2, 'Jane Smith', 'ABC Car Sales', '2023-02-20', 30000.00, 'Cash', '2023-03-20', 'Paid', 102),
    ('GHI789JKL01234567',3, 'Bob Johnson', '123 Motors', '2023-03-10', 20000.00, 'Financing', '2023-04-10', 'Pending', 103);

-- Insert data into lease_contracts table
INSERT INTO lease_contracts (vehicle_id, lessee_name, lease_start_date, lease_end_date, monthly_payment, payment_due_date, payment_status, salesperson_id)
VALUES
    (1, 'Alice Turner', '2023-04-01', '2024-04-01', 400.00, '2023-04-15', 'Pending', 104),
    (2, 'Charlie Brown', '2023-05-01', '2024-05-01', 350.00, '2023-05-15', 'Pending', 105),
    (3, 'Eva Martinez', '2023-06-01', '2024-06-01', 300.00, '2023-06-15', 'Pending', 106);
