USE SQL_Academy_PD_3;
GO

--1. ������� �� ����� ���� ��������� ������ ��������������;
--	��������������� ������. ������� �� ����� ���� �������� ������ �������� �������������.
SELECT MIN(teachers.birth_date) FROM teachers;

SELECT *
FROM students
WHERE students.birth_date < (SELECT MIN(teachers.birth_date) FROM teachers);
