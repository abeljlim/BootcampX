CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY NOT NULL, --instead of INTEGER PRIMARY KEY
  name VARCHAR(255) NOT NULL, 
  end_date DATE,
  start_date DATE
);

CREATE TABLE students (
  id SERIAL PRIMARY KEY NOT NULL, --instead of INTEGER PRIMARY KEY
  name VARCHAR(255) NOT NULL, 
  email VARCHAR(255), 
  phone VARCHAR(32), 
  github VARCHAR(255), 
  start_date DATE, 
  end_date DATE, 
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE --instead of INTEGER FOREIGN KEY
);