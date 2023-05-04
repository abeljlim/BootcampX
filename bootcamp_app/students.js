const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students
JOIN cohorts ON cohort_id = cohorts.id
LIMIT 5;
`)
.then(res => {
  res.rows.forEach(record => {
    console.log(`${record.name} has an id of ${record.student_id} and was in the ${record.cohort} cohort`);
  })
});