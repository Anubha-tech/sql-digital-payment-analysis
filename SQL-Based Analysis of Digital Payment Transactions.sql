CREATE DATABASE sql_project;
USE sql_project;
SELECT DATABASE();
CREATE TABLE transactions (
    transaction_id INT,
    user_id INT,
    amount DECIMAL(10,2),
    currency VARCHAR(10),
    transaction_date DATE
);
INSERT INTO transactions VALUES
(1, 101, 250.50, 'EUR', '2024-01-10'),
(2, 102, 100.00, 'EUR', '2024-01-11'),
(3, 101, 75.25, 'USD', '2024-01-12'),
(4, 103, 500.00, 'EUR', '2024-01-13'),
(5, 102, 60.00, 'USD', '2024-01-14');

SELECT * FROM transactions;
SELECT COUNT(*) AS total_transactions
FROM transactions;

SELECT user_id, SUM(amount) AS total_sent
FROM transactions
GROUP BY user_id;

SELECT AVG(amount) AS average_amount
FROM transactions;

SELECT *
FROM transactions
WHERE currency = 'EUR';

SELECT user_id, SUM(amount) AS total_sent
FROM transactions
GROUP BY user_id
HAVING SUM(amount) > 200;

