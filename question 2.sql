-- this procedure finds employee number by employee name
drop procedure if exists employee_number;
delimiter //
create procedure employee_number(
	IN employeeFirstName VARCHAR(20), 
    IN employeeLastName VARCHAR(20)
    )
    select emp_no
    from employees
    where first_name = employeeFirstName
    and last_name = employeeLastName;
    //
    delimiter ;
    call employee_number("Georgi", "Facello"); 
	