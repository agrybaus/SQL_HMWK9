CREATE TABLE Employee(
	id SERIAL,
	emp_no INT PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	gender VARCHAR(10),
	hire_date DATE
);

CREATE TABLE Dept_Employee(
	emp_no INT PRIMARY KEY,
	dept_no VARCHAR(50),
	from_date DATE,
	to_date DATE
);

CREATE TABLE Dept_Manager(
	dept_no VARCHAR(50),
	emp_no INT,
	from_date DATE,
	to_date DATE
);

CREATE TABLE Title(
	emp_no INT PRIMARY KEY,
	title VARCHAR(100),
	from_date DATE,
	to_date DATE
);

CREATE TABLE Salary(
	id SERIAL,
	emp_no INT PRIMARY KEY,
	salary INT,
	from_date DATE,
	to_date DATE
);
CREATE TABLE Department(
	dept_no VARCHAR(100) PRIMARY KEY,
	dept_name VARCHAR(100)
);

SELECT * FROM Title


CREATE TABLE employee_salary(
	emp_no INT,
	last_name VARCHAR(100),
	first_name VARCHAR(100),
	gender VARCHAR(10),
	salary INT
);
INSERT INTO employee_salary 
VALUES
	(Employee.emp_no), 
	(Employee.last_name), 
	(Employee.first_name),
	(Employee.gender), 
	(Salary.salary);


	
SELECT * FROM Employee
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'

SELECT * FROM Employee
SELECT COUNT(emp_no) AS "total"
FROM Employee
GROUP BY last_name 
ORDER BY "total" DESC

	
SELECT * FROM Salary
DROP TABLE employee_salary

SELECT COUNT(last_name)
FROM Employee

SELECT last_name FROM Employee 
GROUP BY last_name 
COUNT(*)
ORDER BY last_name DESC;

/* Query #1 */
SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Employee.gender, Salary.salary FROM Salary
INNER JOIN Employee ON
Employee.emp_no=Salary.emp_no;

/* Query #2 */
SELECT * FROM Employee
	WHERE hire_date > '1985-12-31' 
	AND hire_date < '1987-01-01' 
	
/* Query #3 */
SELECT Dept_Manager.dept_no, Department.dept_name, Dept_Manager.emp_no, Employee.last_name, Employee.first_name, Dept_Manager.from_date, Dept_Manager.to_date 
FROM Department
INNER JOIN Dept_Manager ON
Department.dept_no=Dept_Manager.dept_no
INNER JOIN Employee ON
Dept_Manager.emp_no=Employee.emp_no
	
/* Query #4 */
SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Department.dept_name FROM Dept_Employee
INNER JOIN Employee ON
Employee.emp_no=Dept_Employee.emp_no
INNER JOIN Department ON
Dept_Employee.dept_no=Department.dept_no
	
/* Query #5 */
SELECT * FROM Employee
	WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%'
	
/* Query #6 */
SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Department.dept_name FROM Dept_Employee
INNER JOIN Employee ON
Employee.emp_no=Dept_Employee.emp_no
INNER JOIN Department ON
Dept_Employee.dept_no=Department.dept_no
WHERE Department.dept_name = 'Sales'

/* Query #7 */
SELECT Employee.emp_no, Employee.last_name, Employee.first_name, Department.dept_name FROM Dept_Employee
INNER JOIN Employee ON
Employee.emp_no=Dept_Employee.emp_no
INNER JOIN Department ON
Dept_Employee.dept_no=Department.dept_no
WHERE Department.dept_name = 'Sales' 
OR Department.dept_name = 'Development' 

/* Query #8 */
SELECT COUNT(last_name) AS "Total Count"
FROM Employee
GROUP BY last_name
ORDER BY "Total Count" DESC

