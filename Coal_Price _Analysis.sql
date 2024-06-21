SELECT * FROM coal_price;

-- Basic Descriptive Statistics
SELECT
  DATE(Date) AS Date,
  AVG(Open) AS Average_Open,
  AVG(High) AS Average_High,
  AVG(Low) AS Average_Low,
  AVG(Close) AS Average_Close,
  AVG(Adj_Close) AS Average_Adj_Close,
  SUM(Volume) AS Total_Volume
FROM coal_price
GROUP BY DATE(Date)
ORDER BY Date;

-- Daily Price Movement

SELECT
  DATE(Date) AS Date,
  Open,
  High,
  Low,
  Close,
  (Close - Open) AS Daily_Change,
  ((Close - Open) / Open) * 100 AS Daily_Change_Percent
FROM coal_price
ORDER BY Date;

--  Identify Days with Largest Price Movements

SELECT
  Date,
  ABS(Close - Open) AS Price_Change_Absolute,
  ((Close - Open) / Open) * 100 AS Price_Change_Percent
FROM coal_price
ORDER BY Price_Change_Absolute DESC, Price_Change_Percent DESC
LIMIT 10;

-- Identify High Volatility Periods

SELECT
  Date,
  STDDEV(High - Low) AS Daily_Volatility
FROM coal_price
GROUP BY Date
ORDER BY Daily_Volatility DESC
LIMIT 10;

--  The day with the highest trading volume
SELECT Date , Volume 
FROM coal_price
ORDER BY Volume DESC 
LIMIT 1;

-- The day with the largest price fluctuation
SELECT Date, (High - Low) as Fluctuation
FROM coal_price 
ORDER BY Fluctuation DESC 
LIMIT 1;

-- The average closing price
SELECT AVG(Close) as Average_Close 
FROM coal_price;

-- Highest and lowest closing prices
SELECT MAX(Close) as Highest_Close, MIN(Close) as Lowest_Close 
FROM coal_price;

-- Count the number of trading days
SELECT COUNT(Date) as Trading_Days 
FROM coal_price;
