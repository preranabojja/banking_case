-- Total customers
SELECT COUNT(*) AS total_customers
FROM bank_customers;

-- Average customer value
SELECT AVG(customer_value) AS avg_customer_value
FROM bank_customers;

-- Total deposits
SELECT SUM(bank_deposits) AS total_deposits
FROM bank_customers;

-- Total loans
SELECT SUM(bank_loans) AS total_loans
FROM bank_customers;

-- Average income
SELECT AVG(estimated_income) AS avg_income
FROM bank_customers;

-- Average credit card balance
SELECT AVG(credit_card_balance) AS avg_cc_balance
FROM bank_customers;

-- Average risk weighting
SELECT AVG(risk_weighting) AS avg_risk
FROM bank_customers;