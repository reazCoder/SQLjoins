CREATE DATABASE college;
USE college;

CREATE TABLE student(
   id INT PRIMARY KEY,
   name VARCHAR(50)
);

INSERT INTO student
(id, name)
VALUES 
(101,"Reaz"),
(102,"Coach"),
(103,"Rifat"),
(104, "Sujon"),
(105,"Rabbi"),
(106,"Oishee");

CREATE TABLE student_info(
    id INT PRIMARY KEY,
    city VARCHAR(20)
);


INSERT INTO student_info
(id, city)
VALUES
(101,"Dhaka"),
(103,"Chitttagong"),
(105,"Gazipur");

-- INNER_JOIN

SELECT * FROM student
INNER JOIN student_info
ON student.id = student_info.id;

-- LEFT_JOIN

SELECT * FROM student
LEFT JOIN student_info
ON student.id = student_info.id;

-- RIGHT_JOIN

SELECT * FROM student
RIGHT JOIN student_info
ON student.id = student_info.id;

-- FULL_JOIN

SELECT * FROM student
LEFT JOIN student_info
ON student.id = student_info.id
UNION
SELECT * FROM student
RIGHT JOIN student_info
ON student.id = student_info.id;





