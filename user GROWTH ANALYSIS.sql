USE Project3;
SELECT year, week_num, num_users, 
    SUM(num_users) OVER (PARTITION BY year ORDER BY year, week_num) as cum_users
FROM(
    SELECT EXTRACT(YEAR FROM created_at) AS year, EXTRACT(WEEK FROM created_at) AS week_num, COUNT(DISTINCT user_id) AS num_users
    FROM users
    WHERE state = 'active'
    GROUP BY year, week_num
) AS subquery;