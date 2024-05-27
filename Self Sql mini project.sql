show databases;

create database office;
use office;
create table employees (
employee_id INT,
employee_name varchar(50),
department varchar(50),
salary INT
);
alter table employees
add hire_date Date; 
select * from employees;
alter table employees
drop column hire_date;
INSERT INTO employees (employee_id, employee_name, department, salary)
VALUES
    (1, 'John Doe', 'IT', 50000),
    (2, 'Jane Smith', 'HR', 45000),
    (3, 'Mark Johnson', 'Sales', 60000),
    (4, 'Sarah Brown', 'IT', 55000),
    (5, 'Michael Lee', 'Sales', 62000);

# Retrieve all employee records:
select * from employees;
# Retrieve employees earning more than $50,000:
select * from employees where salary > 50000;
# Count the total number of employees:
select count(*) As total_employees from employees;
# Calculate the average salary:
select avg(salary) as Average_salary from employees;
# Group employees by department and calculate the total salary for each department:
select department, sum(salary) as total_salary from employees group by department;
# Find the highest paid employee:
select * from employees order by salary desc limit 1;
# Find employees whose name starts with 'M':
select * from employees where employee_name Like 'M%'; 
select * from employees where employee_name Like 'J%';
select * from employees where employee_name Like '%e';
select * from employees where employee_name Like '%e%';
# Calculate the average salary for IT department employees:
select avg(salary) as avg_salary_IT from employees where department = 'IT';
# Find employees with a salary between $45,000 and $55,000:
select * from employees where salary between 45000 and 55000;
# Find the department with the highest total salary:
select department, sum(salary) as highest_tot_salary from employees group by department order by highest_tot_salary desc limit 1;
