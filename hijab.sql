CREATE DATABASE HIJAB;

USE HIJAB;



CREATE TABLE Customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(255),
email VARCHAR(255),
phone_number VARCHAR(20),
hijab_style VARCHAR(255) -- Optional: Untuk menyimpan gaya hijab pilihan
);

INSERT INTO Customers (customer_name, email, phone_number, hijab_style)
VALUES ('Dinara Indri', 'Dinara123@email.com', '555-123-4567', 'Pashmina');

CREATE TABLE Orders (
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
order_date DATE,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Assuming Aisha Khan (ID 1) placed an order for the Black Instant Scarf
INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES (1, '2024-03-25', 19.99);

-- You can calculate the total_amount based on multiple hijab items and quantity in a separate query

CREATE TABLE Hijab (
  hijab_id INT PRIMARY KEY AUTO_INCREMENT,
  hijab_name VARCHAR(255) NOT NULL,  -- Enforce name to have a value
  description TEXT,
  price DECIMAL(10,2) NOT NULL,  -- Enforce price to have a value
  stock INT NOT NULL,            -- Enforce stock to have a value
  image_url VARCHAR(255) DEFAULT NULL  -- Optional image URL
);

INSERT INTO Hijab (hijab_name, description, price, stock)
VALUES ('Instant Scarf - Black', 'Soft and comfortable instant hijab with pre-sewn loop for easy wear.', 19.99, 20);

INSERT INTO Hijab (hijab_name, description, price, stock)
VALUES ('Shayla (Large)', 'Luxurious shayla in a beautiful floral print.', 34.99, 15);

INSERT INTO Hijab (hijab_name, description, price, stock)
VALUES ('Khimar (Niqab)', 'Lightweight khimar with integrated niqab for full coverage.', 42.50, 8);
