
/* Ernesto Gonzalez
   Date: 4-10-2025
*/


-- Create database
Create database Employees;

Use Employees;

-- Create the table Employee

CREATE TABLE Employees
(
  emp_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birth_date DATE,
  gender CHAR(1),
  hire_date DATE
);


INSERT INTO Employees (emp_id, first_name, last_name, birth_date, gender, hire_date)
VALUES
(1, 'John', 'Doe', '1985-06-15', 'M', '2010-03-12'),
(2, 'Jane', 'Smith', '1990-07-20', 'F', '2015-11-04'),
(3, 'Mike', 'Johnson', '1982-01-25', 'M', '2013-06-30'),
(4, 'Emily', 'Williams', '1988-04-10', 'F', '2018-01-05'),
(5, 'Chris', 'Brown', '1979-12-02', 'M', '2009-09-19'),
(6, 'Sarah', 'Jones', '1992-11-17', 'F', '2020-07-22'),
(7, 'David', 'Miller', '1984-05-06', 'M', '2012-02-13'),
(8, 'Sophia', 'Davis', '1994-08-14', 'F', '2021-03-30'),
(9, 'Daniel', 'Garcia', '1987-09-21', 'M', '2014-10-15'),
(10, 'Olivia', 'Martinez', '1991-03-09', 'F', '2016-05-25'),
(11, 'James', 'Hernandez', '1983-11-01', 'M', '2011-02-07'),
(12, 'Charlotte', 'Lopez', '1989-02-23', 'F', '2017-08-10'),
(13, 'Ethan', 'Gonzalez', '1995-01-12', 'M', '2022-09-17'),
(14, 'Ava', 'Perez', '1990-06-27', 'F', '2019-04-02'),
(15, 'William', 'Wilson', '1980-10-30', 'M', '2008-11-16'),
(16, 'Isabella', 'Anderson', '1993-04-18', 'F', '2020-05-13'),
(17, 'Alexander', 'Thomas', '1986-08-05', 'M', '2015-12-29'),
(18, 'Mia', 'Taylor', '1992-03-07', 'F', '2018-10-22'),
(19, 'Benjamin', 'Moore', '1981-07-28', 'M', '2010-09-09'),
(20, 'Amelia', 'Jackson', '1994-09-13', 'F', '2021-02-19');


select * from employee;


CREATE TABLE departments
(
 dept_id INT NOT NULL PRIMARY KEY,
 dept_name VARCHAR(200) UNIQUE KEY
);

INSERT INTO departments (dept_id, dept_name)
VALUES
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Engineering'),
(6, 'Product Management'),
(7, 'Customer Support'),
(8, 'Legal'),
(9, 'Operations'),
(10, 'IT'),
(11, 'Research and Development'),
(12, 'Business Development'),
(13, 'Quality Assurance'),
(14, 'Supply Chain'),
(15, 'Public Relations');

select * from Departments order by dept_id;




CREATE TABLE dept_emp (
    emp_id      INT         NOT NULL,
    dept_id     INT ,
    from_date   DATE        NOT NULL,
    to_date     DATE        NOT NULL,
    KEY         (emp_id),   -- Build INDEX on this non-unique-value column
    KEY         (dept_id),  -- Build INDEX on this non-unique-value column
    FOREIGN KEY (emp_id) REFERENCES employees (emp_id) ON DELETE CASCADE,
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id) ON DELETE CASCADE,
    PRIMARY KEY (emp_id, dept_id)
           -- Might not be unique?? Need to include from_date
);

INSERT INTO dept_emp (emp_id, dept_id, from_date, to_date)
VALUES
(1, 1, '2010-03-12', '2014-05-20'),
(2, 2, '2015-11-04', '2019-11-04'),
(3, 3, '2013-06-30', '2018-08-01'),
(4, 4, '2018-01-05', '2024-01-01'),
(5, 5, '2009-09-19', '2013-03-15'),
(6, 6, '2020-07-22', '2024-04-01'),
(7, 7, '2012-02-13', '2016-04-18'),
(8, 8, '2021-03-30', '2024-03-30'),
(9, 9, '2014-10-15', '2019-06-01'),
(10, 10, '2016-05-25', '2022-09-01'),
(11, 1, '2011-02-07', '2015-12-12'),
(12, 2, '2017-08-10', '2024-04-01'),
(13, 3, '2022-09-17', '2024-04-01'),
(14, 4, '2019-04-02', '2024-04-01'),
(15, 5, '2008-11-16', '2013-01-01'),
(16, 6, '2020-05-13', '2024-04-01'),
(17, 7, '2015-12-29', '2021-03-30'),
(18, 8, '2018-10-22', '2024-04-01'),
(19, 9, '2010-09-09', '2015-10-01'),
(20, 10, '2021-02-19', '2024-04-01');


CREATE TABLE titles 
(
    title_id    INT PRIMARY KEY,
    emp_id      INT NOT NULL,
    title       VARCHAR(50)  NOT NULL,
    from_date   DATE         NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_id) REFERENCES employees (emp_id) 
  
);

INSERT INTO titles (title_id, emp_id, title, from_date, to_date)
VALUES
(1, 1, 'Software Engineer', '2010-03-12', '2014-05-20'),
(2, 2, 'HR Specialist', '2015-11-04', NULL),
(3, 3, 'Senior Developer', '2013-06-30', '2018-08-01'),
(4, 4, 'Marketing Manager', '2018-01-05', NULL),
(5, 5, 'Accountant', '2009-09-19', '2013-03-15'),
(6, 6, 'Recruiter', '2020-07-22', NULL),
(7, 7, 'Tech Lead', '2012-02-13', '2016-04-18'),
(8, 8, 'Customer Support Rep', '2021-03-30', NULL),
(9, 9, 'Sales Executive', '2014-10-15', '2019-06-01'),
(10, 10, 'Data Analyst', '2016-05-25', '2022-09-01'),
(11, 11, 'System Administrator', '2011-02-07', '2015-12-12'),
(12, 12, 'Legal Advisor', '2017-08-10', NULL),
(13, 13, 'Frontend Developer', '2022-09-17', NULL),
(14, 14, 'Product Manager', '2019-04-02', NULL),
(15, 15, 'Network Engineer', '2008-11-16', '2013-01-01'),
(16, 16, 'QA Engineer', '2020-05-13', NULL),
(17, 17, 'Business Analyst', '2015-12-29', '2021-03-30'),
(18, 18, 'UX Designer', '2018-10-22', NULL),
(19, 19, 'Operations Manager', '2010-09-09', '2015-10-01'),
(20, 20, 'Public Relations Officer', '2021-02-19', NULL);

CREATE TABLE salaries
 (
    salary_id INT PRIMARY KEY,
    emp_id      INT    NOT NULL,
    salary      INT    NOT NULL,
    from_date   DATE   NOT NULL,
    to_date     DATE   NOT NULL,
    FOREIGN KEY (emp_id) REFERENCES employees (emp_id) ON DELETE CASCADE
);


INSERT INTO salaries (salary_id, emp_id, salary, from_date, to_date)
VALUES
(1, 1, 60000, '2010-03-12', '2014-05-20'),
(2, 2, 55000, '2015-11-04', '2019-11-04'),
(3, 3, 75000, '2013-06-30', '2018-08-01'),
(4, 4, 70000, '2018-01-05', '2024-01-01'),
(5, 5, 52000, '2009-09-19', '2013-03-15'),
(6, 6, 58000, '2020-07-22', '2024-04-01'),
(7, 7, 80000, '2012-02-13', '2016-04-18'),
(8, 8, 46000, '2021-03-30', '2024-03-30'),
(9, 9, 62000, '2014-10-15', '2019-06-01'),
(10, 10, 67000, '2016-05-25', '2022-09-01'),
(11, 11, 69000, '2011-02-07', '2015-12-12'),
(12, 12, 73000, '2017-08-10', '2024-04-01'),
(13, 13, 64000, '2022-09-17', '2024-04-01'),
(14, 14, 85000, '2019-04-02', '2024-04-01'),
(15, 15, 57000, '2008-11-16', '2013-01-01'),
(16, 16, 61000, '2020-05-13', '2024-04-01'),
(17, 17, 68000, '2015-12-29', '2021-03-30'),
(18, 18, 54000, '2018-10-22', '2024-04-01'),
(19, 19, 71000, '2010-09-09', '2015-10-01'),
(20, 20, 49000, '2021-02-19', '2024-04-01');


SELECT * FROM Departments;
SELECT * From Employees;
SELECT * FROM Salaries;
SELECT * FROM Titles;
SELECT * FROM dept_emp;