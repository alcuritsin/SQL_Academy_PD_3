USE SQL_Academy_PD_3;
GO

--2. Посчитать сколько студентов младше преподавателей;
--	Вспомогательный запрос. Вывести на экран дату рождения самого младшего преподавателя.
SELECT MAX(teachers.birth_date) FROM teachers;

SELECT COUNT(student_id) AS N'Студентов младше преподвавателей'
FROM students
WHERE students.birth_date > (SELECT MAX(teachers.birth_date) FROM teachers);
