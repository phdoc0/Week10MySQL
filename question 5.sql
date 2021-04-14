-- this procedure finds avg employee salary grouped by gender
drop procedure if exists gender_salary;
delimiter //
create procedure gender_salary()
select avg(salary), gender 
from employees_with_salaries
group by gender;
//
delimiter ;
call gender_salary;