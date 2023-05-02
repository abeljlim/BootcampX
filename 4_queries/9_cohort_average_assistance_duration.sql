SELECT AVG(total_duration) AS average_total_duration
FROM (SELECT SUM(completed_at - started_at) AS total_duration
FROM assistance_requests
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name) AS cohort_total_duration;