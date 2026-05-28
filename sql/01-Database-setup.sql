-- View table structure
SELECT *
FROM bank_customers
LIMIT 5;

-- Check columns
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'bank_customers';

-- Total rows
SELECT COUNT(*) AS total_customers
FROM bank_customers;

-- Check missing values
SELECT
    COUNT(*) FILTER (WHERE age IS NULL) AS missing_age,
    COUNT(*) FILTER (WHERE estimated_income IS NULL) AS missing_income
FROM bank_customers;