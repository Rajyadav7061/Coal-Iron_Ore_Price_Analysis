SELECT * FROM iron_ore;

-- Average closing price over a specific time period

SELECT AVG(Close) AS Average_Close_Price
FROM iron_ore;

-- highest closing price and the date it occurred

SELECT MAX(Close) AS Highest_Close_Price, Date
FROM iron_ore
group by Date;

-- Difference between the high and low prices for each day

SELECT Date, High - Low AS Price_Range
FROM iron_ore;

-- Identify days where the opening price was lower than the closing price

SELECT Date, Open, Close
FROM iron_ore
WHERE Open < Close;

-- Days with Largest Price Movements

SELECT
  Date,
  ABS(Close - Open) AS Price_Change_Absolute,
  ((Close - Open) / Open) * 100 AS Price_Change_Percent
FROM iron_ore
ORDER BY Price_Change_Absolute DESC, Price_Change_Percent DESC, Date
LIMIT 10;






