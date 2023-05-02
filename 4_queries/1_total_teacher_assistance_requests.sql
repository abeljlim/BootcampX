SELECT COUNT(assistance_requests.*), teachers.name
FROM assistance_requests
INNER JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;