-- Average customer value by occupation
SELECT
    occupation,
    AVG(customer_value) AS avg_customer_value
FROM bank_customers
GROUP BY occupation
ORDER BY avg_customer_value DESC;

-- Average deposits by loyalty classification
SELECT
    loyalty_classification,
    AVG(bank_deposits) AS avg_deposits
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY avg_deposits DESC;

-- Top income occupations
SELECT
    occupation,
    AVG(estimated_income) AS avg_income
FROM bank_customers
GROUP BY occupation
ORDER BY avg_income DESC;

-- Highest value nationalities
SELECT
    nationality,
    AVG(customer_value) AS avg_value
FROM bank_customers
GROUP BY nationality
ORDER BY avg_value DESC;