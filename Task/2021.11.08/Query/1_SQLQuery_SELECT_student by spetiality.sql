USE SQL_Academy_PD_3;
GO

--��� ��������
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'������������',
	sp.spetiality_name
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
ORDER BY
	sp.spetiality_name;

--������� ���� ���������, ����������� �� ����� "����������������"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'������������'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'����������������';

--������� ���� ���������, ����������� �� ����� "������� ����������"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'��������'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'������� ����������';

--������� ���� ���������, ����������� �� ����� "������������ �������"
SELECT
	s.last_name + ' ' + s.first_name + ' ' + s.midle_name AS N'���������'
FROM
	dbo.students AS s, dbo.spetialities AS sp, dbo.groups AS g
WHERE
	s.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
	AND sp.spetiality_name = N'������������ ������� � ������';