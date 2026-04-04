CREATE DATABASE `IS436` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `IS436`;

CREATE TABLE Category (
    category_id INT,
    category_name VARCHAR(100),
    PRIMARY KEY (category_id)
);

CREATE TABLE Product (
    product_id INT,
    name VARCHAR(255),
    description TEXT,
    price DECIMAL(10,2),
    category_id INT,
    PRIMARY KEY (product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

CREATE TABLE Product_Image (
    image_id INT,
    product_id INT,
    image_url VARCHAR(255),
    PRIMARY KEY (image_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Customer (
    customer_id INT,
    name VARCHAR(100),
    email VARCHAR(100),
    PRIMARY KEY (customer_id)
);

CREATE TABLE Review (
    review_id INT,
    product_id INT,
    customer_id INT,
    rating INT,
    comment TEXT,
    PRIMARY KEY (review_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Cart (
    cart_id INT,
    customer_id INT,
    PRIMARY KEY (cart_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Cart_Item (
    cart_item_id INT,
    cart_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (cart_item_id),
    FOREIGN KEY (cart_id) REFERENCES Cart(cart_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Order_Item (
    order_item_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    PRIMARY KEY (order_item_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

INSERT INTO Category VALUES
(1, 'Foosball Balls'),
(2, 'Accessories'),
(3, 'Kits');

INSERT INTO Product VALUES
(1, 'Deluxe Ball Kit', 'High-quality foosball balls set', 19.99, 3),
(2, 'Pro Foosball Ball', 'Professional grade ball', 5.99, 1),
(3, 'Foosball Handle Grip', 'Comfortable grip', 7.99, 2);

INSERT INTO Product_Image VALUES
(1, 1, 'img1.jpg'),
(2, 1, 'img2.jpg'),
(3, 2, 'img3.jpg');

INSERT INTO Customer VALUES
(1, 'John Doe', 'john@email.com'),
(2, 'Jane Smith', 'jane@email.com'),
(3, 'Ali Khan', 'ali@email.com');

INSERT INTO Review VALUES
(1, 1, 1, 5, 'Great quality'),
(2, 1, 2, 4, 'Good value'),
(3, 2, 3, 5, 'Excellent');

INSERT INTO Cart VALUES
(1, 1),
(2, 2);

INSERT INTO Cart_Item VALUES
(1, 1, 1, 2),
(2, 1, 2, 1),
(3, 2, 3, 3);

INSERT INTO Orders VALUES
(1, 1, '2026-03-20', 45.97),
(2, 2, '2026-03-21', 23.97);

INSERT INTO Order_Item VALUES
(1, 1, 1, 2, 19.99),
(2, 1, 2, 1, 5.99),
(3, 2, 3, 3, 7.99);
