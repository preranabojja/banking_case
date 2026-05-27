-- Highest risk occupations
SELECT
    occupation,
    AVG(risk_weighting) AS avg_risk
FROM bank_customers
GROUP BY occupation
ORDER BY avg_risk DESC;

-- Customers with highest loans
SELECT
    client_id,
    occupation,
    bank_loans,
    risk_weighting
FROM bank_customers
ORDER BY bank_loans DESC
LIMIT 20;

-- High risk customers
SELECT
    client_id,
    occupation,
    risk_weighting,
    bank_loans
FROM bank_customers
WHERE risk_weighting > 70
ORDER BY bank_loans DESC;

-- Average loans by loyalty segment
SELECT
    loyalty_classification,
    AVG(bank_loans) AS avg_loans
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY avg_loans DESC;