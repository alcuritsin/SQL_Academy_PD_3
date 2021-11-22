USE SQL_Academy_PD_3;
GO

--5. ������� 6, 7 ����������� ��������� ��� ������ JOIN, 
--   � �������� � ����������� ��������� (��� JOIN)

--	������� ���� ��������������, �� ���������� "Hardware-PC"
--  ����������� � ������� WHERE
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'�������������',
	dp.discipline_name AS N'����������'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'Hardware-PC';

--  ����������� � ������� JOIN
SELECT 
	tc.last_name + N' ' + tc.first_name + N' ' + tc.midle_name  AS N'�������������',
	dp.discipline_name AS N'����������'
FROM
	dbo.teachers AS tc
JOIN dbo.teacher_descipline AS tc_dp
	ON (tc.teacher_id = tc_dp.teacher)
JOIN dbo.disciplines AS dp
	ON (dp.discipline_id = tc_dp.discipline)
WHERE dp.discipline_name = N'Hardware-PC';

--7. ������� ���� ��������������, �� ���������� "���������� ���������������� �� ����� C++";

--  ����������� � ������� WHERE
SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS N'�������������',
	dp.discipline_name AS N'����������'
FROM
	dbo.teachers AS tc,
	dbo.disciplines AS dp,
	dbo.teacher_descipline AS tc_dp
WHERE
	dp.discipline_id = tc_dp.discipline
	AND tc.teacher_id = tc_dp.teacher
	AND dp.discipline_name = N'����������� ���������������� �� ����� C++';

--  ����������� � ������� JOIN
SELECT 
	tc.last_name + N' ' + tc.first_name + N' ' + tc.midle_name  AS N'�������������',
	dp.discipline_name AS N'����������'
FROM
	dbo.teachers AS tc
JOIN dbo.teacher_descipline AS tc_dp
	ON (tc.teacher_id = tc_dp.teacher)
JOIN dbo.disciplines AS dp
	ON (dp.discipline_id = tc_dp.discipline)
WHERE dp.discipline_name = N'����������� ���������������� �� ����� C++';
