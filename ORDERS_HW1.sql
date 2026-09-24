CREATE TABLE Costomer (
    costomer_nicname VARCHAR(100),
    customer_city VARCHAR(50),
    PRIMARY KEY (costomer_nicname)
);

INSERT INTO Costomer (costomer_nicname, customer_city) VALUES
('anna_sidorova',  'Санкт-Петербург'),
('ivan_petrov',    'Москва'),
('mariya_ivanova', 'Новосибирск'),
('oleg_kuznetsov', 'Казань'),
('petr_smirnov',   'Москва');

CREATE TABLE Products (
    product_id INT,
    product VARCHAR(50),
    PRIMARY KEY (product_id)
);

INSERT INTO Products (product_id, product) VALUES
(17, 'Масло'),
(18, 'Молоко'),
(19, 'Сыр'),
(20, 'Хлеб');

CREATE TABLE Costomer_Orders (
    order_id INT,
    costomer_nicname VARCHAR(100),
    PRIMARY KEY (order_id),
    FOREIGN KEY (costomer_nicname) REFERENCES Costomer(costomer_nicname)
);

INSERT INTO Costomer_Orders (order_id, costomer_nicname) VALUES
(10001, 'ivan_petrov'),
(10002, 'ivan_petrov'),
(10003, 'anna_sidorova'),
(10004, 'anna_sidorova'),
(10005, 'oleg_kuznetsov'),
(10006, 'oleg_kuznetsov'),
(10007, 'mariya_ivanova'),
(10008, 'mariya_ivanova'),
(10009, 'petr_smirnov'),
(10010, 'petr_smirnov'),
(10011, 'anna_sidorova'),
(10012, 'ivan_petrov'),
(10013, 'ivan_petrov'),
(10014, 'anna_sidorova'),
(10015, 'oleg_kuznetsov'),
(10016, 'mariya_ivanova'),
(10017, 'petr_smirnov'),
(10018, 'ivan_petrov'),
(10019, 'anna_sidorova'),
(10020, 'oleg_kuznetsov'),
(10021, 'mariya_ivanova'),
(10022, 'petr_smirnov');

CREATE TABLE Orders_products (
    uniqu_id INT,
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (uniqu_id),
    FOREIGN KEY (order_id) REFERENCES Costomer_Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Orders_products (uniqu_id, order_id, product_id, quantity) VALUES
(1,  10001, 18, 2),
(2,  10001, 20, 1),
(3,  10002, 19, 1),
(4,  10003, 18, 3),
(5,  10003, 17, 2),
(6,  10004, 20, 5),
(7,  10005, 19, 1),
(8,  10005, 17, 1),
(9,  10005, 20, 2),
(10, 10006, 18, 4),
(11, 10007, 20, 2),
(12, 10007, 19, 3),
(13, 10008, 17, 1),
(14, 10009, 18, 1),
(15, 10009, 20, 1),
(16, 10009, 19, 1),
(17, 10010, 17, 2),
(18, 10011, 19, 2),
(19, 10012, 17, 1),
(20, 10012, 18, 2),
(21, 10013, 19, 2),
(22, 10013, 17, 1),
(23, 10014, 18, 1),
(24, 10014, 20, 2),
(25, 10015, 18, 3),
(26, 10015, 19, 1),
(27, 10016, 17, 2),
(28, 10016, 18, 2),
(29, 10017, 20, 1),
(30, 10017, 17, 3),
(31, 10018, 20, 4),
(32, 10019, 19, 1),
(33, 10019, 17, 2),
(34, 10020, 20, 2),
(35, 10020, 17, 1),
(36, 10021, 18, 2),
(37, 10021, 19, 1),
(38, 10022, 18, 5);
