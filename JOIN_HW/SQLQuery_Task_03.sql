USE SQL_Academy_PD_3;
GO

--3. ������� ���� ���������� ��������, ���������� �����, �����....;
--	����  - ���� (06), ���� (07), ������ (08);
--	����� - �������� (09), ������� (10), ������ (11);
--	����  - ������� (12), ������ (01), ������� (02);
--	����� - ���� (03), ������ (04), ��� (05);

--  ������� ���� ���������� ��������, ���������� �����
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

--  ������� ���� ���������� ��������, ���������� ������
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

--  ������� ���� ���������� ��������, ���������� �����
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

--  ������� ���� ���������� ��������, ���������� ������
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