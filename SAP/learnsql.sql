-- CREATE DATABASE '/home/pei/Project/OPEN_SQL/test.db'
-- DBA USER 'dba' DBA PASSWORD '123456'
-- LOG ON '/home/pei/Project/OPEN_SQL/test.log';

-- Use a particular existing database.
USE employees;

SELECT * FROM employees AS all_employees;

SELECT * FROM departments as all_departments;

SELECT DepartmentID, DepartmentName
FROM departments;

-- SELECT * FROM departments TOP 5;

SELECT DepartmentName FROM departments WHERE DepartmentName LIKE '%ng%';

SELECT * FROM departments WHERE DepartmentName LIKE 'S____';

SELECT DISTINCT Street FROM employees;

SELECT DISTINCT Street FROM employees ORDER BY Street;

SELECT COUNT(*) FROM departments;

SELECT COUNT(*) FROM departments WHERE DepartmentName LIKE '%ng%';

SELECT employees.GivenName, employees.Surname, departments.DepartmentID
FROM departments INNER JOIN employees ON employees.DepartmentID = departments.DepartmentID;

CREATE TABLE tablename1 (fname VARCHAR(20), lname VARCHAR(20));

INSERT INTO tablename1 VALUES('Richard','Mutt');

UPDATE tablename1 SET fname='John' WHERE lname='Mutt';

SELECT * FROM tablename1;

DELETE FROM tablename1 WHERE lname like 'M%';

SELECT * FROM tablename1;

DELETE FROM tablename1;

SELECT * FROM tablename1;

DROP TABLE tablename1;