-- Use Student_db;
-- Drop table class;
-- -- <<Foreign keys >>
-- Create table Course(
-- course_id int auto_increment primary key,
-- c_name varchar(100) unique not null
-- );
-- Create table Student(
-- id int auto_increment primary key,
-- name varchar(40) not null,
-- c_id int,
-- foreign key (c_id) references Course(course_id)
-- on update cascade
-- on delete set null
-- );

-- Insert into Course values(1,"English"),(2,"Hindi"),(3,"Maths");
-- Insert into Student values(101,"Rohan",2),(102,"Ruhi",3),(103,"Roshan",3),(104,"Ramesh",1);

-- -- <<On delete sets nul value in Student table
-- Delete from Course where course_id=3;

-- -- << on update in course table update will occur automatically in student table accordingly >>
-- Update Course set course_id=4 where course_id=2;

-- select * from Student;
-- select * from Course;

-- -- << To see all foreign keys in the current database >>
SELECT 
    table_name, 
    column_name, 
    constraint_name, 
    referenced_table_name, 
    referenced_column_name
FROM 
    information_schema.key_column_usage
WHERE 
    referenced_table_name IS NOT NULL
    AND table_schema = 'Student_db';
