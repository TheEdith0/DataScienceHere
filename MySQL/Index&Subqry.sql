-- --<< subquery : query inside a query.

-- USE first;
-- show index from employee;
-- drop index idx_dp_ep on employee;

-- Alter table employee add column salary int default(20000);
-- update employee set salary=55000 where id=18;
select * from employee;
-- --<< in where clause:
select * from employee where salary > (select avg(salary) from employee);
select * from employee e where salary > (select avg(salary) from employee where dept_name=e.dept_name);
-- --<< in from clause: creates a temp. table
select dept_name,avg_sal from (select dept_name, avg(salary) as avg_sal from employee group by dept_name)as dept_table where avg_sal > 30000;
-- --<< in select clause: