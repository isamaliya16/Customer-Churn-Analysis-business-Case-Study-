-- Create Table
CREATE TABLE CustomerSubscriptions (
    CustomerID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    SubscriptionType VARCHAR(15),
    SubscriptionDate DATE,
    LastLoginDate DATE,
    TotalSessions INT,
    FeedbackScore INT,
    IsChurned TINYINT
);

-- Load 9000-Record CSV Dataset
LOAD DATA LOCAL INFILE 'D:/Statistics/exam/CustomerSubscriptions.csv'
INTO TABLE CustomerSubscriptions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM CustomerSubscriptions; 

-- Verify Data Load
SELECT COUNT(*) AS TotalRecords
FROM CustomerSubscriptions;

-- 1. Active vs Churned Customers (by SubscriptionType)
SELECT 
    SubscriptionType,
    IsChurned,
    COUNT(*) AS CustomerCount
FROM CustomerSubscriptions
GROUP BY SubscriptionType, IsChurned
ORDER BY SubscriptionType;

-- 2️. Average FeedbackScore by SubscriptionType & Gender
SELECT 
    SubscriptionType,
    Gender,
    ROUND(AVG(FeedbackScore), 2) AS AvgFeedbackScore
FROM CustomerSubscriptions
GROUP BY SubscriptionType, Gender
ORDER BY SubscriptionType, Gender;

-- Customers with < 5 Sessions AND Feedback < 5
SELECT 
    CustomerID,
    Name,
    TotalSessions,
    FeedbackScore
FROM CustomerSubscriptions
WHERE TotalSessions < 5
  AND FeedbackScore < 5;

-- Customers Inactive for Last 60 Days
SELECT 
    CustomerID,
    Name,
    LastLoginDate
FROM CustomerSubscriptions
WHERE LastLoginDate < DATE_SUB(CURDATE(), INTERVAL 60 DAY);

-- Churn Rate by SubscriptionType
SELECT 
    SubscriptionType,
    COUNT(*) AS TotalCustomers,
    SUM(IsChurned) AS ChurnedCustomers,
    ROUND(SUM(IsChurned) * 100 / COUNT(*), 2) AS ChurnRate_Percent
FROM CustomerSubscriptions
GROUP BY SubscriptionType;

-- Top 10 Longest Subscribed Customers
SELECT CustomerID,
       Name,
       SubscriptionType,
       SubscriptionDate
       FROM CustomerSubscriptions
       ORDER BY SubscriptionDate ASC
        LIMIT 10;

-- Age Group-Wise Churn Analysis
SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55' 
        ELSE '56+'
    END AS AgeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(IsChurned) AS ChurnedCustomers,
    ROUND(SUM(IsChurned) * 100 / COUNT(*), 2) AS ChurnRate_Percent
FROM CustomerSubscriptions
GROUP BY AgeGroup
ORDER BY AgeGroup;


