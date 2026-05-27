-- Customers by loyalty classification
SELECT
    loyalty_classification,
    COUNT(*) AS total_customers
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY total_customers DESC;

-- Average age by loyalty segment
SELECT
    loyalty_classification,
    AVG(age) AS avg_age
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY avg_age DESC;

-- Customers by nationality
SELECT
    nationality,
    COUNT(*) AS customers
FROM bank_customers
GROUP BY nationality
ORDER BY customers DESC;

-- Customers by occupation
SELECT
    occupation,
    COUNT(*) AS customers
FROM bank_customers
GROUP BY occupation
ORDER BY customers DESC;