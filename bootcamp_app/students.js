const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const args = process.argv.slice(2);

pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '${args[0]}%'
LIMIT ${args[1]};
`)
.then(res => {
  res.rows.forEach(record => {
    console.log(`${record.name} has an id of ${record.student_id} and was in the ${record.cohort} cohort`);
  })
});
/* // This (which does query interpolation the way Andy Lindsay showed us) doesn't work for some reason
pool.query(`
SELECT students.id AS student_id, students.name AS name, cohorts.name AS cohort
FROM students
INNER JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name LIKE '$1%'
LIMIT $2;
`, args)
.then(res => {
  res.rows.forEach(record => {
    console.log(`${record.name} has an id of ${record.student_id} and was in the ${record.cohort} cohort`);
  })
}); */
