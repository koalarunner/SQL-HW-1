1---LIST DETAIL OF EACH EMP LASTNAME,FIRSTNAME,GENDER AND SALARY

SELECT   e.emp_no, e.last_name, e.first_name,e.gender, salaries.salary
FROM employee e
INNER JOIN
	salaries ON e.emp_no = salaries.emp_no


2---LIST EMP WHO WERE HIRED IN 1986

SELECT * FROM employee
WHERE hire_date 
BETWEEN '1986-01-01' AND
'1986-12-31'

3---LIST THE MANAGER OF EACH DEPT, 
---DEPT NUMBER,DEPT NAME,MANAGER EMPNO, LASTNAME, FIRSTNAME,START AND END EMPLOYMENT
SELECT * FROM dept_manager
SELECT * FROM department
SELECT * FROM employee
	
SELECT m.dept_no, m.emp_no, d.dept_name,e.first_name,e.last_name, m.from_date, m.to_date 
FROM dept_manager m
LEFT JOIN department d
ON m.dept_no = d.dept_no
LEFT JOIN employee e
ON m.emp_no = e.emp_no


4---LIST THE DEPT OF EACH EMPLOYEE, 
---EMP NUMBER,DEPT NAME, LASTNAME, FIRSTNAME

SELECT * FROM department
SELECT * FROM employee
SELECT * FROM dep_emp
	
SELECT e.emp_no,e.first_name, e.last_name,d.dept_name 
FROM employee e
INNER JOIN dep_emp 
ON e.emp_no = dep_emp.emp_no
INNER JOIN department d
ON d.dept_no = dep_emp.dept_no
5--- LIST ALL EMP WHOESE FIRST NAME IS "HERCULES" AND LAST NAME 
--- BEGINS WITH "B"
SELECT * FROM employee

SELECT first_name, last_name 
FROM employee
WHERE first_name 
LIKE 'Hercules'
AND last_name 
LIKE 'B%'

6---LIST THE DEPT OF EACH EMPLOYEE, 
---EMP NUMBER,DEPT NAME, LASTNAME, FIRSTNAME

SELECT * FROM department
SELECT * FROM employee
SELECT * FROM dep_emp
	
SELECT e.emp_no,e.first_name, e.last_name,d.dept_name 
FROM employee e
INNER JOIN dep_emp 
ON e.emp_no = dep_emp.emp_no
INNER JOIN department d
ON d.dept_no = dep_emp.dept_no
WHERE dept_name = 'Sales'



7---LIST THE DEPT OF EACH EMPLOYEE, 
---EMP NUMBER,DEPT NAME, LASTNAME, FIRSTNAME

SELECT * FROM department
SELECT * FROM employee
SELECT * FROM dep_emp
	
SELECT e.emp_no,e.first_name, e.last_name,d.dept_name 
FROM employee e
INNER JOIN dep_emp 
ON e.emp_no = dep_emp.emp_no
INNER JOIN department d
ON d.dept_no = dep_emp.dept_no
WHERE dept_name = 'Sales' 
OR dept_name = 'Development'

8--- IN DESCENDING ORDER LIST THE FREQUECY COUNT OF EMPLOYEE LAST NAMES
--- HOW MANY EMPLOYEE SHARE EACH LAST NAMES
SELECT last_name, COUNT(last_name)FROM employee
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;