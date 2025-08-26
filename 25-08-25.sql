CREATE DATABASE E_com;
SHOW DATABASES;
USE E_com;
CREATE TABLE category (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50) NOT NULL,
    c_description VARCHAR(100) NOT NULL
);
CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50) NOT NULL,
    c_id INT,
    FOREIGN KEY (c_id) REFERENCES category(c_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE price (
    price_id INT PRIMARY KEY,
    p_id INT,
    price DECIMAL(10,2),
    FOREIGN KEY (p_id) REFERENCES product(p_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

SHOW TABLES;
INSERT INTO category VALUES 
(201, 'books', 'Educational and Fictional Books'),
(202, 'sports', 'Indoor and Outdoor Sports Equipment'),
(203, 'toys', 'Kids and Educational Toys'),
(204, 'beauty', 'Cosmetics and Skincare Products');
INSERT INTO product VALUES
(301, 'Novel', 201),
(302, 'Textbook', 201),
(303, 'Comics', 201),
(304, 'Cricket Bat', 202),
(305, 'Football', 202),
(306, 'Puzzle', 203),
(307, 'Remote Car', 203),
(308, 'Lipstick', 204),
(309, 'Moisturizer', 204);
INSERT INTO price VALUES
(401, 301, 500.00),
(402, 302, 1200.00),
(403, 303, 300.00),
(404, 304, 2500.00),
(405, 305, 1800.00),
(406, 306, 700.00),
(407, 307, 1500.00),
(408, 308, 900.00),
(409, 309, 1200.00);
SELECT * FROM category;
SELECT * FROM product;
SELECT * FROM price;
DELETE FROM product WHERE p_id=304;
UPDATE product 
SET p_name = 'Basketball', c_id = 203 
WHERE p_id = 305;
SELECT * FROM product
WHERE p_name LIKE 'b%';
DELETE FROM product
WHERE p_name LIKE '%s';
SELECT p_name AS name, c_id AS category
FROM product;
SELECT c_id AS id, c_name AS name 
FROM category;
SELECT * FROM product WHERE p_name LIKE 'c%';
SELECT * FROM product WHERE p_name LIKE '%r';
SELECT * FROM product WHERE p_name LIKE '%car%';
SELECT * FROM product WHERE p_name LIKE '_o%';
CREATE VIEW product_view AS
SELECT p_name, c_id
FROM product;
SELECT * FROM product_view;

CREATE OR REPLACE VIEW category_view AS
SELECT c_id, c_name
FROM category;
SELECT * FROM category_view;

DROP VIEW product_view;
