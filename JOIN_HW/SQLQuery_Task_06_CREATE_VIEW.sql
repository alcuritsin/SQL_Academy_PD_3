--USE SQL_Academy_PD_3;
--GO

--IF OBJECT_ID(N'tempdb..#seasons') IS NOT NULL
--BEGIN
--	DROP TABLE #seasons
--END

CREATE VIEW SeasonBirth
AS
--  Вывести всех участников Академии, родившихся по сезонам
(SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_summer,
	N'teacher' AS N'status',
	N'Лето' AS N'season'
FROM dbo.teachers AS tc WHERE  MONTH(tc.birth_date) BETWEEN 6 AND 8
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_summer,
	N'student' AS N'status',
	N'Лето' AS N'season'
FROM dbo.students AS st WHERE MONTH(st.birth_date) BETWEEN 6 and 8
--
UNION ALL
--
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_summer,
	N'teacher' AS N'status',
	N'Осень' AS N'season'
FROM dbo.teachers AS tc WHERE  MONTH(tc.birth_date) BETWEEN 9 AND 11
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_summer,
	N'student' AS N'status',
	N'Осень' AS N'season'
FROM dbo.students AS st WHERE MONTH(st.birth_date) BETWEEN 9 and 11
--
UNION ALL
--
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_winter,
	N'teacher' AS N'status',
	N'Зима' AS N'season'
FROM dbo.teachers AS tc WHERE  MONTH(tc.birth_date) IN ( 1, 2, 12)
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_winter,
	N'student' AS N'status',
	N'Зима' AS N'season'
FROM dbo.students AS st WHERE MONTH(st.birth_date) IN ( 1, 2, 12)
--
UNION ALL
--
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_spring,
	N'teacher' AS N'status',
	N'Весна' AS N'season'
FROM dbo.teachers AS tc WHERE  MONTH(tc.birth_date) BETWEEN 3 AND 5
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_spring,
	N'student' AS N'status',
	N'Весна' AS N'season'
FROM dbo.students AS st WHERE MONTH(st.birth_date) BETWEEN 3 and 5);

--SELECT * FROM SeasonBirth;
