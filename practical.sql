CREATE DATABASE db8;
USE db8;
CREATE TABLE employee(
employee_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL ,
email VARCHAR(50) NOT NULL UNIQUE,
age INT CHECK(age>=18),
department VARCHAR(50) DEFAULT 'general',
salary DECIMAL(10,2) CHECK(salary>0)
);

INSERT INTO employee (employee_id, name, email, age, department, salary)
VALUES 
(101, 'Aniruddh', 'ani@gmail.com', 25, 'IT', 55000),
(102, 'Priya', 'priya@gmail.com', 28, 'HR', 45000),
(103, 'Gagan', 'gagan@gmail.com', 30, 'IT', 65000),
(104, 'Neha', 'neha@gmail.com', 26, 'Finance', 60000),
(105, 'Rohan', 'rohan@gmail.com', 32, 'HR', 50000);

SELECT * FROM employee WHERE salary>50000;

UPDATE employee SET salary=salary+5000 WHERE department='IT';

DELETE FROM employee WHERE employee_id = 105; 

ALTER TABLE employee ADD phone VARCHAR(15);

TRUNCATE TABLE employee;

SELECT * FROM employee;