USE SQL_Academy_PD_3;
GO

--2. ��������� ������� ��������� ������ ��������������;
--	��������������� ������. ������� �� ����� ���� �������� ������ �������� �������������.
SELECT MAX(teachers.birth_date) FROM teachers;

SELECT COUNT(student_id) AS N'��������� ������ ���������������'
FROM students
WHERE students.birth_date > (SELECT MAX(teachers.birth_date) FROM teachers);
