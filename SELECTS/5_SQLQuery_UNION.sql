USE SQL_Academy_PD_3;
GO



SELECT
	tc.last_name + ' ' + tc.first_name + ' ' + tc.midle_name AS name,
	DATEDIFF(YEAR,tc.birth_date,GETDATE()) AS Age,
	N'teacher' AS N'status'
FROM 
	dbo.teachers AS tc
WHERE	DATEDIFF(year, CAST(tc.birth_date AS DATETIME), GETDATE()) BETWEEN 20 AND 30
UNION ALL
SELECT
	st.last_name + ' ' + st.first_name + ' ' + st.midle_name AS name,
	DATEDIFF(YEAR,st.birth_date, GETDATE()) AS 'Age',
	N'student' AS N'status'
FROM 
	dbo.students AS st
WHERE DATEDIFF(YEAR,st.birth_date, GETDATE()) BETWEEN 20 and 30;
	
	--Age >=20
	--AND Age <=30
--ORDER BY N'Возраст';


