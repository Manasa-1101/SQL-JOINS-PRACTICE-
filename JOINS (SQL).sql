CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    teacher_id INT
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(50)
);
INSERT INTO Students VALUES
(1, 'Rahul', 101),
(2, 'Priya', 102),
(3, 'Arjun', 103),
(4, 'Sneha', NULL);

INSERT INTO Courses VALUES
(101, 'SQL Basics', 1),
(102, 'Python', 2),
(103, 'HTML', 3),
(104, 'CSS', 4);

INSERT INTO Teachers VALUES
(1, 'Meena'),
(2, 'Ravi'),
(3, 'John'),
(4, 'Asha');
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT
);

INSERT INTO Employee VALUES
(1, 'Amit', NULL),   -- top-level manager (no manager)
(2, 'Ravi', 1),
(3, 'Priya', 1),
(4, 'Kiran', 2);


DROP TABLE STUDENTS
DROP TABLE TEACHERS
DROP TABLE COURSES
DROP TABLE EMPLOYEE