CREATE DATABASE jobs;
USE jobs;

CREATE table department
(
department_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
full_name varchar(255),
department varchar(255)
);

-- FOREIGN KEY ALWAYS ON 'MANY' TABLE

CREATE table employees
(
employee_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
full_name varchar(255),
department_id INT NOT NULL,
FOREIGN KEY (`department_id`) references `jobs`.`department`(department_id) ON DELETE CASCADE
);

INSERT INTO department (`full_name`, `department`) VALUES 
('Harpinder Sandhu', 'I.T'),
('Harsh Gurm','Teacher'),
('John Doe','Human Resources');

SELECT * FROM department;
SELECT * FROM employees;

ALTER TABLE employees
ADD salary int NOT NULL;

INSERT INTO employees (`full_name`,`department_id`,`salary`) VALUES ('Harpinder Sandhu','1','50000');
INSERT INTO employees (`full_name`,`department_id`,`salary`) VALUES ('John Doe','2','60000');
INSERT INTO employees (`full_name`,`department_id`,`salary`) VALUES ('Harsh Gurm','3','70000');


DELETE from department
WHERE department_id = 1;
