USE SQL_Academy_PD_3;
GO

--Для проверки
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'Программисты',
	sp.spetiality_name
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
ORDER BY
	sp.spetiality_name;

--Вывести всех студентов, обучающихся по курсу "Программирование"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'Программисты'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'Программирование';

--Вывести всех студентов, обучающихся по курсу "Сетевые технологии"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'Сетевеки'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'Сетевые технологии';

--Вывести всех студентов, обучающихся по курсу "Компьютерная графика"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'Дизайнеры'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'Компьютерная графика и дизайн';