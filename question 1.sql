-- the counts current employees by title
delimiter //
create procedure employee_count()
select title, count(*)
from titles
where to_date > now()
group by title;
//
delimiter ;
call employee_count;