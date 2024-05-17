/*TASK 2 -  Write an SQL query to calculate the percentage share of each language over the last 30 days.*/
Use project3;
SELECT
  language AS Languages,
  ROUND(100 * COUNT(*) / sub.total, 2) AS Percentage,
  sub.total AS TotalEvents
FROM
  job_data
CROSS JOIN (
  SELECT COUNT(*) AS total
  FROM job_data
) AS sub
GROUP BY
  language, sub.total;
