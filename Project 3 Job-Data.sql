CREATE DATABASE Project3;
SHOW DATABASES;
USE Project3;

CREATE TABLE job_data (
    ds DATE,
    job_id INT NOT NULL,
    actor_id INT NOT NULL,
    Event VARCHAR(25) NOT NULL,
    Language VARCHAR(25) NOT NULL,
    Time_spent INT NOT NULL,
    Org VARCHAR(2) NOT NULL
);

SELECT * FROM job_data;

INSERT INTO job_data (ds, job_id, actor_id, Event, Language, Time_spent, Org)
VALUES 
    ('2020-11-30', 21, 1001, 'skip', 'English', 15, 'A'),
    ('2020-11-30', 22, 1005, 'transfer', 'Arabic', 25, 'B'),
    ('2020-11-29', 23, 1003, 'decision', 'Persian', 20, 'C'),
    ('2020-11-28', 23, 1005, 'transfer', 'Persian', 22, 'D'),
    ('2020-11-28', 25, 1002, 'decision', 'Hindi', 11, 'B'),
    ('2020-11-27', 11, 1007, 'decision', 'French', 104, 'D'),
    ('2020-11-26', 23, 1004, 'skip', 'Persian', 56, 'A'),
    ('2020-11-25', 20, 1003, 'transfer', 'Italian', 45, 'C');
    
    SELECT * FROM job_data;