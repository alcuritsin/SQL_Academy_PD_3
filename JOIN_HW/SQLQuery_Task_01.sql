USE SQL_Academy_PD_3;
GO

--1. Вывести на экран всех студентов старше преподавателей;
--	Вспомогательный запрос. Вывести на экран дату рождения самого старшего преподавателя.
SELECT MIN(teachers.birth_date) FROM teachers;

SELECT *
FROM students
WHERE students.birth_date < (SELECT MIN(teachers.birth_date) FROM teachers);
