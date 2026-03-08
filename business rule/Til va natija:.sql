SELECT Language, COUNT(*) AS Grant_Count
FROM [dbo].[abituriyent_2024]
WHERE Status = 'Grant'
GROUP BY Language;