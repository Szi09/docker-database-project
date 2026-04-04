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
