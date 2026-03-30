-- -- << group by :
-- use first;
-- select dept_name, count(*) as Total from employee group by dept_name;
-- --<< with rollup : gives sub total of all
-- select dept_name,avg(salary) as avg_sal from employee group by dept_name with rollup;
-- --<< in group by where is not used but having is used instead of this & multiple column can be taken on group by 
-- select dept_name, count(*) as Total from employee group by dept_name having avg(salary) > 40000;

-- --<< STORED PROCEDURE :
-- -- << without argument
-- Delimiter //

-- Create procedure emp_pro1()
-- begin 
-- select * from employee;
-- end//

-- delimiter ;

-- -- << with argument
-- Delimiter $$
--  create procedure emp_pro2(IN arg_id INT)
--  begin 
-- select * from employee where id =arg_id;
--  end $$

-- Delimiter ;

-- call emp_pro1();
-- call emp_pro2(3);

-- DROP PROCEDURE if exists emp_pro1;