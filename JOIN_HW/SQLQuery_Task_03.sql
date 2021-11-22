USE SQL_Academy_PD_3;
GO

--3. Вывести всех участников Академии, родившихся летом, зимой....;
--	Лето  - Июнь (06), Июль (07), Август (08);
--	Осень - Сентябрь (09), Октябрь (10), Ноябрь (11);
--	Зима  - Декабрь (12), Январь (01), Февраль (02);
--	Весна - Март (03), Апрель (04), Май (05);

--  Вывести всех участников Академии, родившихся ЛЕТОМ
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_summer,
	N'teacher' AS N'status'
FROM 
	dbo.teachers AS tc
WHERE  MONTH(tc.birth_date) BETWEEN 6 AND 8
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_summer,
	N'student' AS N'status'
FROM 
	dbo.students AS st
WHERE MONTH(st.birth_date) BETWEEN 6 and 8;

--  Вывести всех участников Академии, родившихся ОСЕНЬЮ
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_autumn,
	N'teacher' AS N'status'
FROM 
	dbo.teachers AS tc
WHERE  MONTH(tc.birth_date) BETWEEN 9 AND 11
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_autumn,
	N'student' AS N'status'
FROM 
	dbo.students AS st
WHERE MONTH(st.birth_date) BETWEEN 9 and 11;

--  Вывести всех участников Академии, родившихся ЗИМОЙ
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_winter,
	N'teacher' AS N'status'
FROM 
	dbo.teachers AS tc
WHERE  MONTH(tc.birth_date) BETWEEN 1 AND 2 
OR MONTH(tc.birth_date) = 12
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_winter,
	N'student' AS N'status'
FROM 
	dbo.students AS st
WHERE MONTH(st.birth_date) BETWEEN 1 and 2
OR MONTH(st.birth_date) = 12;

--  Вывести всех участников Академии, родившихся ВЕСНОЙ
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	tc.birth_date AS birth_in_spring,
	N'teacher' AS N'status'
FROM 
	dbo.teachers AS tc
WHERE  MONTH(tc.birth_date) BETWEEN 3 AND 5
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	st.birth_date AS birth_in_spring,
	N'student' AS N'status'
FROM 
	dbo.students AS st
WHERE MONTH(st.birth_date) BETWEEN 3 and 5;