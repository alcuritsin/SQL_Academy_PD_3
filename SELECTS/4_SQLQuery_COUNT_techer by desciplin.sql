USE SQL_Academy_PD_3;
GO

--Для проверки
SELECT 
	dp.discipline_name,
	tc.last_name
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	tc_dp.discipline = dp.discipline_id
	AND tc_dp.teacher = tc.teacher_id
ORDER BY dp.discipline_name;

--Посчитать количество преподавателей по каждой из дисциплин
SELECT 
	dp.discipline_name AS N'Дисциплина',
	COUNT(tc_dp.teacher) AS N'Количество преподавателей'
FROM
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	tc_dp.discipline = dp.discipline_id
GROUP BY dp.discipline_name