USE SQL_Academy_PD_3;
GO

--5. Запросы 6, 7 попробовать выполнить при помощи JOIN, 
--   и сравнить с предыдущими запросами (без JOIN)

--	Вывести всех преподавателей, по дисциплине "Hardware-PC"
--  Объединение с помощью WHERE
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'Преподаватель',
	dp.discipline_name AS N'Дисциплина'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'Hardware-PC';

--  Объединение с помощью JOIN
SELECT 
	tc.last_name + N' ' + tc.first_name + N' ' + tc.midle_name  AS N'Преподаватель',
	dp.discipline_name AS N'Дисциплина'
FROM
	dbo.teachers AS tc
JOIN dbo.teacher_descipline AS tc_dp
	ON (tc.teacher_id = tc_dp.teacher)
JOIN dbo.disciplines AS dp
	ON (dp.discipline_id = tc_dp.discipline)
WHERE dp.discipline_name = N'Hardware-PC';

--7. Вывести всех преподавателей, по дисциплине "Процедурне программирование на языке C++";

--  Объединение с помощью WHERE
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'Преподаватель',
	dp.discipline_name AS N'Дисциплина'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'Процедурное программирование на языке C++';

--  Объединение с помощью JOIN
SELECT 
	tc.last_name + N' ' + tc.first_name + N' ' + tc.midle_name  AS N'Преподаватель',
	dp.discipline_name AS N'Дисциплина'
FROM
	dbo.teachers AS tc
JOIN dbo.teacher_descipline AS tc_dp
	ON (tc.teacher_id = tc_dp.teacher)
JOIN dbo.disciplines AS dp
	ON (dp.discipline_id = tc_dp.discipline)
WHERE dp.discipline_name = N'Процедурное программирование на языке C++';
