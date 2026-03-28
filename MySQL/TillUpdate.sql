-- SHOW DATABASES;
-- CREATE TABLE Student1(
-- Id INT AUTO_INCREMENT PRIMARY KEY,
-- Name VARCHAR(30) NOT NULL DEFAULT "No name",
-- Email VARCHAR(100) UNIQUE,
-- Age INT,
-- Registration_Date DATE
-- );
-- SELECT *FROM Student1;
-- DESCRIBE Student1;
-- RENAME TABLE Student1 to Students;
-- DROP TABLE Students;
-- CREATE TABLE StudentCSE(
-- Id INT AUTO_INCREMENT PRIMARY KEY,
-- Name VARCHAR(30) NOT NULL DEFAULT "No name",
-- Email VARCHAR(100) UNIQUE,
-- Age INT,
-- Registration_Date DATE
-- );
-- DESCRIBE StudentCSE;
-- ALTER TABLE StudentCSE RENAME COLUMN Registration_Date TO Admission_Date;
-- ALTER TABLE StudentCSE DROP COLUMN Email;
-- ALTER TABLE StudentCSE ADD COLUMN Email VARCHAR(40) UNIQUE DEFAULT("NO email-id");
-- DESCRIBE StudentCSE;
-- ALTER TABLE StudentCSE MODIFY COLUMN name varchar(25) DEFAULT("");
-- DESCRIBE StudentCSE;
-- ALTER TABLE StudentCSE MODIFY COLUMN Email varchar(40) UNIQUE DEFAULT("NO email-id") AFTER name;
-- DESCRIBE StudentCSE;

-- SHOW DATABASES;
-- CREATE DATABASE Student_db;

-- USE Student_db;
-- CREATE TABLE class(
-- id int primary key,
-- name varchar(50),
-- age int,
-- DOB date
-- );

-- INSERT INTO class (id,name,age,DOB) values
-- (1,"Ashwani",21,"2005-09-13"),
-- (2,"Himanshu",23,"2003-09-21"),
-- (3,"Mohit",22,"2004-05-03"),
-- (4,"Nikhil",20,NULL);

-- Select *from class;

-- SELECT * FROM class where age>21;
-- Select name,DOB,id from class where DOB is NULL;
-- select * from class where DOB is not null;
-- select *from class where age between 20 and 22;
-- select *from class where age>20 order by DOB ASC;
-- select * from class limit 2,3;
-- select *from class limit 3;
-- select *from class where name like "%i_";

-- ALTER TABLE class ADD COLUMN grade varchar(10);
-- Update class set grade="10th" where age>20;
-- Update class set grade="9th" where age=20;

-- UPDATE class SET age = 19, grade = '12th' WHERE id = 4;

-- select * from class;

-- DELETE FROM class where DOB IS NULL;
-- select *from class;
-- DELETE FROM class;
-- select @@autocommit;
-- set autocommit=0;
-- select @@autocommit;

-- START TRANSACTION;
-- update class set age = age+1 where age<20;
-- update class set age = age-1 where age>20;
-- commit;

-- select *from class;


-- START TRANSACTION;
-- update class set age = age+1 where age<21;


-- select *from class;
-- rollback;
-- select * from class;

-- set autocommit=1;
-- select @@autocommit;