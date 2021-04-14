-- this procedure finds employee current salary by employee number
drop procedure if exists current_employee_salary;
delimiter //
create procedure current_employee_salary(
	IN employeeNumber int
    )
    select salary
    from salaries
    where emp_no = employeeNumber
    and to_date > now();
    //
    delimiter ;
    call current_employee_salary("10001"); 
	