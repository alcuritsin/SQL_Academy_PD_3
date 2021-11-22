USE SQL_Academy_PD_3;
GO

SELECT * FROM SeasonBirth;

SELECT 
	N'Летом' AS N'Сезон',
	COUNT(name) AS N'Количество'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'Лето'
UNION ALL
SELECT 
	N'Зимой' AS N'Сезон',
	COUNT(name)  AS N'Количество'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'Зима'
UNION ALL
SELECT 
	N'Весной' AS N'Сезон',
	COUNT(name) AS N'Количество'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'Весна'
UNION ALL
SELECT 
	N'Осенью' AS N'Сезон',
	COUNT(name) AS N'Количество'
FROM dbo.SeasonBirth AS t
WHERE t.season = N'Осень';


