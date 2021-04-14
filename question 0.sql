drop view if exists employees_with_salaries;
create view employees_with_salaries as
select employees.emp_no, employees.first_name, employees.last_name, emmployees.gender, employees.hire_date, salaries.salary, salaries.from_date, salaries.to_date
from employees
inner join salaries
on employees.emp_no = salaries.emp_no;