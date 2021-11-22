USE SQL_Academy_PD_3;
GO

--������� ���������� ��������� ������ ������
SELECT
	g.group_name,
	COUNT(st.student_group) AS N'���������� ���������'
FROM
	students AS st, groups AS g
WHERE
	st.student_group = g.group_id
GROUP BY g.group_name;

--������� ���������� ��������� �� ������ �������������
SELECT
	sp.spetiality_name,
	COUNT(st.student_group) AS N'���������� ���������'
FROM
	students AS st, groups AS g, spetialities AS sp
WHERE
	st.student_group = g.group_id
	AND g.spetiality = sp.spetiality_id
GROUP BY sp.spetiality_name;