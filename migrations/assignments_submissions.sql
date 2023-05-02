CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER --changed from DECIMAL(2)
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE, --was missing ' ON DELETE CASCADE'
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE, --was missing ' ON DELETE CASCADE'
  duration INTEGER, --changed from DECIMAL(2)
  submission_date DATE
);