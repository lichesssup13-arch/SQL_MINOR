
CREATE TABLE Orders (
    order_id INT,
    costomer_nicname VARCHAR(100),
    customer_city VARCHAR(50),
    products VARCHAR(200),
    quantities VARCHAR(100),
	PRIMARY KEY (order_id, customer_city)
	);

INSERT INTO Orders (order_id, costomer_nicname, customer_city, products, quantities) VALUES
(10001, 'ivan_petrov',    'Москва',          'Молоко, Хлеб',      '2, 1'),
(10002, 'ivan_petrov',    'Москва',          'Сыр',               '1'),
(10003, 'anna_sidorova',  'Санкт-Петербург', 'Молоко, Масло',     '3, 2'),
(10004, 'anna_sidorova',  'Санкт-Петербург', 'Хлеб',              '5'),
(10005, 'oleg_kuznetsov', 'Казань',          'Сыр, Масло, Хлеб',  '1, 1, 2'),
(10006, 'oleg_kuznetsov', 'Казань',          'Молоко',            '4'),
(10007, 'mariya_ivanova', 'Новосибирск',     'Хлеб, Сыр',         '2, 3'),
(10008, 'mariya_ivanova', 'Новосибирск',     'Масло',             '1'),
(10009, 'petr_smirnov',   'Москва',          'Молоко, Хлеб, Сыр', '1, 1, 1'),
(10010, 'petr_smirnov',   'Москва',          'Масло',             '2'),
(10011, 'anna_sidorova',  'Санкт-Петербург', 'Сыр',               '2'),
(10012, 'ivan_petrov',    'Москва',          'Масло, Молоко',     '1, 2'),

(10013, 'ivan_petrov',    'Москва',          'Сыр, Масло',        '2, 1'),
(10014, 'anna_sidorova',  'Санкт-Петербург', 'Молоко, Хлеб',      '1, 2'),
(10015, 'oleg_kuznetsov', 'Казань',          'Молоко, Сыр',       '3, 1'),
(10016, 'mariya_ivanova', 'Новосибирск',     'Масло, Молоко',     '2, 2'),
(10017, 'petr_smirnov',   'Москва',          'Хлеб, Масло',       '1, 3'),
(10018, 'ivan_petrov',    'Москва',          'Хлеб',              '4'),
(10019, 'anna_sidorova',  'Санкт-Петербург', 'Сыр, Масло',        '1, 2'),
(10020, 'oleg_kuznetsov', 'Казань',          'Хлеб, Масло',       '2, 1'),
(10021, 'mariya_ivanova', 'Новосибирск',     'Молоко, Сыр',       '2, 1'),
(10022, 'petr_smirnov',   'Москва',          'Молоко',            '5');