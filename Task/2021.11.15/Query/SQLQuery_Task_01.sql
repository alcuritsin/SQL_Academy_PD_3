USE SQL_Academy_PD_3;
GO

--INSERT INTO students
--	(last_name, first_name, midle_name, birth_date,year_study, rating,attendance,student_group)
--VALUES
--	(N'��������', N'������', N'�������������', '1975-12-25', 1,91,95, 3),
--	(N'��������f', N'���������', N'���������', '1977-11-16', 2,95,97, 4)


--1. ������� �� ����� ���� ��������� ������ ��������������;
--	��������������� ������. ������� �� ����� ���� �������� ������ �������� �������������.
SELECT MIN(teachers.birth_date) FROM teachers;

SELECT 
	students.last_name +' '+students.first_name+' '+students.midle_name AS '�������'
FROM students
WHERE students.birth_date < (SELECT MIN(teachers.birth_date) FROM teachers);