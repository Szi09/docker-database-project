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
