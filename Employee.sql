
/* Ernesto Gonzalez
   Date: 4-10-2025
*/


-- Create database
Create database Employee;

Use Employee;

-- Create the table Employee

CREATE TABLE Employee
(
  emp_id INT NOT NULL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  birth_date DATE,
  gender CHAR(1),
  hire_date DATE
);


INSERT INTO Employee (emp_id, first_name, last_name, birth_date, gender, hire_date)
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