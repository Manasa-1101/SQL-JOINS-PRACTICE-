SELECT* FROM STUDENTS
SELECT* FROM COURSES
SELECT* FROM TEACHERS
SELECT* FROM EMPLOYEE

/* JOINS
1.	List all students with their course names.
2.	Show all students, including those not enrolled in any course.
3.	Show all courses and their enrolled students, even if no one is enrolled.
4.	Show all students and all courses (whether matched or not).*/


SELECT S.STUDENT_ID,S.NAME,C.COURSE_NAME
FROM STUDENTS AS S INNER JOIN COURSES AS C
ON S.COURSE_ID = C.course_id

SELECT S.NAME,C.COURSE_NAME
FROM STUDENTS AS S LEFT JOIN COURSES AS C
ON S.COURSE_ID = C.COURSE_ID

SELECT S.NAME,C.COURSE_NAME
FROM STUDENTS AS S RIGHT JOIN COURSES AS C
ON S.COURSE_ID = C.COURSE_ID


SELECT S.NAME,C.COURSE_NAME
FROM STUDENTS AS S FULL JOIN COURSES AS C
ON S.COURSE_ID = C.COURSE_ID

/*JOINS USING MULTI-TABLE
5.List all teachers and the students they teach (even if a teacher has no students).
6.	Find students who have not enrolled in any course.
7.	Display student name, course name, and teacher name.
8.	Find which teacher teaches which student.*/




SELECT S.NAME,C.COURSE_NAME,T.TEACHER_NAME
FROM STUDENTS AS S  JOIN COURSES AS C
ON S.COURSE_ID =C.COURSE_ID
  JOIN
 TEACHERS AS T
 ON C.TEACHER_ID = T.TEACHER_ID


 SELECT T.TEACHER_NAME,S.NAME,C.course_name
 FROM TEACHERS AS T INNER JOIN COURSES AS C
 ON T.TEACHER_ID =C.TEACHER_ID
 INNER JOIN
 STUDENTS AS S
 ON C.COURSE_ID =S.COURSE_ID


 SELECT T.TEACHER_NAME,S.NAME
 FROM TEACHERS AS T LEFT JOIN COURSES AS C
 ON T.TEACHER_ID  = C.TEACHER_ID
 LEFT JOIN
 STUDENTS AS S
 ON C.COURSE_ID = S.COURSE_ID 


 SELECT S.NAME
 FROM STUDENTS AS S LEFT JOIN COURSES AS C
ON S.COURSE_ID = C.COURSE_ID
WHERE C.COURSE_ID IS NULL


