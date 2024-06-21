SELECT * FROM ironore;

SELECT
  MIN(High) AS Min_High,
  MAX(High) AS Max_High,
  MIN(Low) AS Min_Low,
  MAX(Low) AS Max_Low,
  MIN(Open) AS Min_Open,
  MAX(Open) AS Max_Open,
  MIN(Close) AS Min_Close,
  MAX(Close) AS Max_Close
FROM ironore;

SELECT
  AVG(High) AS Avg_High,
  AVG(Low) AS Avg_Low,
  AVG(Open) AS Avg_Open,
  AVG(Close) AS Avg_Close
FROM ironore;


SELECT
  STDDEV(High) AS Stddev_High,
  STDDEV(Low) AS Stddev_Low,
  STDDEV(Open) AS Stddev_Open,
  STDDEV(Close) AS Stddev_Close
FROM ironore;

SELECT
  VARIANCE(High) AS Variance_High,
  VARIANCE(Low) AS Variance_Low,
  VARIANCE(Open) AS Variance_Open,
  VARIANCE(Close) AS Variance_Close
FROM ironore;

SELECT
  Date,
  AVG(High) AS Average_High,
  AVG(Low) AS Average_Low,
  AVG(Open) AS Average_Open,
  AVG(Close) AS Average_Close
FROM ironore
GROUP BY Date
ORDER BY Date;

SELECT
  Date,
  SUM(Volume) AS Total_Volume
FROM ironore
GROUP BY Date
ORDER BY Date;


