SELECT cohort_name, avg_assistance_time AS average_assistance_time
FROM (SELECT cohorts.name AS cohort_name, AVG(completed_at - started_at) AS avg_assistance_time FROM
assistance_requests
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name) avg_assistance_time_table
WHERE avg_assistance_time >= ALL(SELECT AVG(completed_at - started_at) AS avg_assistance_time FROM
assistance_requests
INNER JOIN students ON student_id = students.id
INNER JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name);

-- how to make variables out of this?
-- correlated subqueries? But it doesn't seem like I can access the first subquery from the second subquery using a "FROM"
-- aliases? Doubt it ...