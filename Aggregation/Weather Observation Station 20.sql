SET @i := -1;
SELECT ROUND(AVG(subq.LAT_N),4)
FROM (SELECT @i := @i + 1 as i, LAT_N
    FROM STATION
    ORDER BY LAT_N) AS subq
WHERE subq.i IN (FLOOR(@i / 2) , CEIL(@i / 2));