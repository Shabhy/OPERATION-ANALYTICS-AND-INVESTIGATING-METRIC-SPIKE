USE Project3;
SELECT
    COUNT(DISTINCT user_id) AS total_users,
    COUNT(*) AS total_emails_sent,
    SUM(CASE WHEN opened = 1 THEN 1 ELSE 0 END) AS total_emails_opened,
    SUM(CASE WHEN clicked = 1 THEN 1 ELSE 0 END) AS total_emails_clicked,
    SUM(CASE WHEN opened = 1 THEN 1 ELSE 0 END) / COUNT(DISTINCT user_id) AS open_rate,
    SUM(CASE WHEN clicked = 1 THEN 1 ELSE 0 END) / COUNT(DISTINCT user_id) AS click_through_rate
FROM
    email_logs;

