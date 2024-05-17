/*TASK 1 - Write an SQL query to calculate the number of jobs reviewed per hour for each day in November 2020.*/
Use project3;
select avg(t) as 'Average jobs reviewed per day per hour',
avg(p) as 'Average jobs reviewed per day per second'
from (
select
ds,
count(job_id)*3600/sum(time_spent) AS t,
count(job_id)/sum(time_spent) AS p
from job_data
where 
month(ds)=11
group by ds) a;