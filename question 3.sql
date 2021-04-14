-- this gives employees by title by employee number
drop procedure if exists employee_title;
delimiter //
create procedure employee_title(
in employeeNumber int
)
select title
from titles
where emp_no = employeeNumber;
//
delimiter ;
call employee_title(10001);