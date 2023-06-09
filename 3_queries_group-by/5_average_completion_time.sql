SELECT name, AVG(duration)
FROM students
INNER JOIN assignment_submissions ON student_id = students.id
WHERE students.end_date IS NULL
GROUP BY name
ORDER BY AVG(duration) DESC;