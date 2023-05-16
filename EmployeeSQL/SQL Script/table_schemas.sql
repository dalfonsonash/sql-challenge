-- DATA ENGINEERING (create tables for the six csv files)

CREATE TABLE departments (
  dept_no   VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(25) NOT NULL
);

CREATE TABLE dept_emp (
  emp_no  INT PRIMARY KEY,
  dept_no VARCHAR(10),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(4),
  emp_no  INT PRIMARY KEY,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE employees (
  emp_no        INT PRIMARY KEY,
  emp_title_id  VARCHAR(5),
  birth_date    DATE,
  first_name    VARCHAR(255),
  last_name     VARCHAR(255),
  sex           CHAR(1),
  hire_date     DATE
);

ALTER TABLE employees
ALTER COLUMN first_name TYPE VARCHAR(25),
ALTER COLUMN last_name TYPE VARCHAR(25); 

CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
  title_id VARCHAR(4) PRIMARY KEY,
  title    VARCHAR(25) NOT NULL
);

ALTER TABLE titles
ALTER COLUMN title_id TYPE VARCHAR(10);

