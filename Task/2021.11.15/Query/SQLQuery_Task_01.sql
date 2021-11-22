USE SQL_Academy_PD_3;
GO

--INSERT INTO students
--	(last_name, first_name, midle_name, birth_date,year_study, rating,attendance,student_group)
--VALUES
--	(N'Васильев', N'Сергей', N'Александрович', '1975-12-25', 1,91,95, 3),
--	(N'Васильевf', N'Маргорита', N'Сергеевна', '1977-11-16', 2,95,97, 4)


--1. Вывести на экран всех студентов старше преподавателей;
--	Вспомогательный запрос. Вывести на экран дату рождения самого старшего преподавателя.
SELECT MIN(teachers.birth_date) FROM teachers;

SELECT 
	students.last_name +' '+students.first_name+' '+students.midle_name AS 'Студент'
FROM students
WHERE students.birth_date < (SELECT MIN(teachers.birth_date) FROM teachers);