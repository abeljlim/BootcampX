SELECT COUNT(assistance_requests.*), students.name
FROM assistance_requests
INNER JOIN students ON students.id = assistance_requests.student_id
WHERE name = 'Elliot Dickinson'
GROUP BY students.name;