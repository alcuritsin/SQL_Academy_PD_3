USE SQL_Academy_PD_3;
GO

SELECT * FROM SeasonBirth;

SELECT 
	N'�����' AS N'�����',
	COUNT(name) AS N'����������'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'����'
UNION ALL
SELECT 
	N'�����' AS N'�����',
	COUNT(name)  AS N'����������'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'����'
UNION ALL
SELECT 
	N'������' AS N'�����',
	COUNT(name) AS N'����������'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'�����'
UNION ALL
SELECT 
	N'������' AS N'�����',
	COUNT(name) AS N'����������'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'�����';


