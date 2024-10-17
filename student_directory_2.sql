DROP TABLE IF EXISTS cohorts;
DROP TABLE IF EXISTS cohorts_id_seq;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS students_id_seq;

CREATE SEQUENCE IF NOT EXISTS cohorts_id_seq;
CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name text,
  starting_date date
);

CREATE SEQUENCE IF NOT EXISTS students_id_seq;
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort_id int,
  constraint fk_cohort foreign key(cohort_id) references cohorts(id) on delete cascade
);
