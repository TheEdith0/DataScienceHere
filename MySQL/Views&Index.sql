-- << Views : it is virtual table of portion of a table , can also contains extras , increase reusability
-- Use Student_db;

-- Create view about_father as select Concat(f_fname," ",l_fname) as FullName,age,timediff(now(),DOP) as Timetillnow from Father;
-- select * from about_father;

-- -- << to update view:
-- create or replace view about_father as select Concat(f_fname," ",l_fname) as FullName,age,timediff(now(),DOP) as Timetillnow,S_id from Father;
-- select * from about_father;
-- DROP view about_father;

-- -- << Indexes: helps to read operation faster on a specific column

-- Use first;
-- CREATE TABLE employee(
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     dept_name VARCHAR(50)
-- );
-- INSERT INTO employee(emp_name, dept_name) VALUES
-- ('Employee_1', 'HR'),
-- ('Employee_2', 'IT'),
-- ('Employee_3', 'Finance'),
-- ('Employee_4', 'Sales'),
-- ('Employee_5', 'Marketing'),
-- ('Employee_6', 'HR'),
-- ('Employee_7', 'IT'),
-- ('Employee_8', 'Finance'),
-- ('Employee_9', 'Sales'),
-- ('Employee_10', 'Marketing'),
-- ('Employee_11', 'HR'),
-- ('Employee_12', 'IT'),
-- ('Employee_13', 'Finance'),
-- ('Employee_14', 'Sales'),
-- ('Employee_15', 'Marketing'),
-- ('Employee_16', 'HR'),
-- ('Employee_17', 'IT'),
-- ('Employee_18', 'Finance'),
-- ('Employee_19', 'Sales'),
-- ('Employee_20', 'Marketing');

-- Select * from employee where dept_name ="IT";
-- --<< takes more time in reading in case of large data

-- create index idx_dp on employee(dept_name);
-- Select * from employee where dept_name ="IT";

-- drop index idx_dp on employee;
-- create index idx_dp_ep on employee(dept_name,emp_name);
-- select * from employee where emp_name like "Employee_1_" and dept_name="IT";

