-- Average checking accounts by loyalty class
SELECT
    loyalty_classification,
    AVG(checking_accounts) AS avg_checking
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY avg_checking DESC;

-- Average savings accounts
SELECT
    loyalty_classification,
    AVG(saving_accounts) AS avg_savings
FROM bank_customers
GROUP BY loyalty_classification
ORDER BY avg_savings DESC;

-- Foreign currency account usage
SELECT
    foreign_currency_account,
    COUNT(*) AS customers
FROM bank_customers
GROUP BY foreign_currency_account;

-- Business lending usage
SELECT
    business_lending,
    COUNT(*) AS customers
FROM bank_customers
GROUP BY business_lending;