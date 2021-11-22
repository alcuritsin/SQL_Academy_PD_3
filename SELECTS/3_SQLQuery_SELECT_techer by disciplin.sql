USE SQL_Academy_PD_3;
GO

--Для проверки
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'Преподаватель',
	dp.discipline_name AS N'Дисциплина'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	tc_dp.discipline = dp.discipline_id
	AND tc_dp.teacher = tc.teacher_id
ORDER BY dp.discipline_name;

--Вывести всех преподавателей, по дисциплине "Hardware-PC"
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'Преподаватель'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'Hardware-PC';

--Вывести всех преподавателей, по дисциплине "Процедурне программирование на языке C++"
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'Преподаватель'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'Процедурное программирование на языке C++';
