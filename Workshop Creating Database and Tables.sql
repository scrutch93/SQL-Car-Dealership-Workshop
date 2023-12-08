CREATE TABLE dealerships (
    dealership_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12)
);

CREATE TABLE vehicles ( 
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    Color VARCHAR(50),
    mileage INT,
    fuel_type VARCHAR(20),
    transmission_type VARCHAR(20),
    SOLD INT
);

CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN),
    FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id)
);

CREATE TABLE sales_contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    buyer_name VARCHAR(100),
    seller_name VARCHAR(100),
    sale_date DATE,
    sale_price DECIMAL(10, 2),
    payment_method VARCHAR(50),
    payment_due_date DATE,
    payment_status VARCHAR(20),
    salesperson_id INT
);

CREATE TABLE lease_contracts (
    lease_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    lessee_name VARCHAR(100),
    lease_start_date DATE,
    lease_end_date DATE,
    monthly_payment DECIMAL(10, 2),
    payment_due_date DATE,
    payment_status VARCHAR(20),
    salesperson_id INT
);