WITH status_cte AS (
    SELECT 
        Status,
        COUNT(*) AS status_count
    FROM [dbo].[abituriyent_2024]
    GROUP BY Status
)
SELECT
    Status,
    status_count,
    CAST(status_count * 1.0 / SUM(status_count) OVER () AS DECIMAL(10,4))*100 AS status_percentage
FROM status_cte;