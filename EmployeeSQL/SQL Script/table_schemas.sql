-- DATA ENGINEERING (create tables for the six csv files)

CREATE TABLE departments (
  dept_no   VARCHAR(10) PRIMARY KEY,
  dept_name VARCHAR(25) NOT NULL
);

CREATE TABLE employees (
  emp_no        INT PRIMARY KEY,
  emp_title_id  VARCHAR(10),
  birth_date    DATE,
  first_name    VARCHAR(255),
  last_name     VARCHAR(255),
  sex           CHAR(1),
  hire_date     DATE,
  FOREIGN KEY (emp_title) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp (
  emp_no  INT,
  dept_no VARCHAR(10),
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(10),
  emp_no  INT PRIMARY KEY,
  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

CREATE TABLE titles (
  title_id VARCHAR(10) PRIMARY KEY,
  title    VARCHAR(25) NOT NULL
);


