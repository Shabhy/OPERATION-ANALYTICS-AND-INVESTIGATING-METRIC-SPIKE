/*TASK 2 - Write an SQL query to calculate the 7-day rolling average of throughput. Additionally, explain whether you prefer using the daily metric or the 7-day rolling average for throughput, and why.*/
Use project3;
select round(count(event)/sum(time_spent), 2) as "Daily Throughput" from job_data
group by ds order by ds;