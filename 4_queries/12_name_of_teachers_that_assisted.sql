/* SELECT (
  SELECT name 
  FROM teachers 
  WHERE teachers.id = teacher_id
  ) AS teachers_name, (
  SELECT DISTINCT cohorts.name 
  FROM cohorts 
  INNER JOIN students ON cohorts.id = cohort_id 
  WHERE cohorts.id = students.cohort_id
) AS cohort_name
FROM assistance_requests
INNER JOIN students ON student_id = students.id
WHERE cohort_id = (SELECT cohorts.id FROM cohorts WHERE cohorts.name = 'JUL02')
GROUP BY teacher_id
ORDER BY teachers_name; */

SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;