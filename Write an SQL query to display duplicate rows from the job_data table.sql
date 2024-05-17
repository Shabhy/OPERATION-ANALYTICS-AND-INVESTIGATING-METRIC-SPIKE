/*TASK 2 -  Write an SQL query to calculate the percentage share of each language over the last 30 days.*/
Use project3;
SELECT
actor_id, count(*) as Duplicates from job_data
group by actor_id having count(*)>1;