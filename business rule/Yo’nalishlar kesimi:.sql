SELECT a.Major, a.Full_Name, a.Score
FROM [dbo].[abituriyent_2024] a
JOIN (
    SELECT Major, MAX(Score) AS Max_Score
    FROM [dbo].[abituriyent_2024]
    GROUP BY Major
) b
ON a.Major = b.Major AND a.Score = b.Max_Score
WHERE a.Status = 'Yiqilgan'
order by Score desc