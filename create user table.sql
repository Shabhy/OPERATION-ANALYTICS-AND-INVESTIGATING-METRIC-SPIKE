USE Project3;

CREATE TABLE users (
    user_id INT,
    created_at VARCHAR(100),
    company_id INT,
    language VARCHAR(65),
    activated_at VARCHAR(150),
    state VARCHAR(50)
);

-- Check secure_file_priv variable
SHOW VARIABLES LIKE 'secure_file_priv';

-- Load data from CSV file into users table
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/users.csv'
INTO TABLE users
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Display the data in the users table
SELECT * FROM users;

-- Alter table to add temp_created_at column with datetime datatype
ALTER TABLE users ADD COLUMN temp_created_at DATETIME;

-- as it is shwoing error 1175 of using safe update mode for that use syntax
Set SQL_safe_updates=0;

-- Update temp_created_at column with correct datetime values
UPDATE users SET temp_created_at = STR_TO_DATE(created_at, '%d-%m-%Y %H:%i')WHERE user_id > 0;
alter table users drop column created_at;
ALTER TABLE users CHANGE COLUMN temp_created_at created_at DATETIME;


