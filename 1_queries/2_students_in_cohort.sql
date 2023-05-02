SELECT id, name
FROM students
WHERE cohort_id = 1 --added "IS "
ORDER BY name;