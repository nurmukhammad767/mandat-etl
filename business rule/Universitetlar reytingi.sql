SELECT avg(Score) as avg_score, University
from [dbo].[abituriyent_2024]
where Status='Grant'
group by University
order by avg_score desc