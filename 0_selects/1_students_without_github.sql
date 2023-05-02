SELECT id, name, email, cohort_id 
FROM students
WHERE github IS NULL --added "IS "
ORDER BY cohort_id;