SELECT day,
COUNT(*),
SUM(duration) AS duration
FROM assignments
GROUP by day
ORDER by day;