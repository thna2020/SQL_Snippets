select F.X, F.Y 
from Functions F
    join Functions F1
        on F.X = F1.Y and F.Y = F1.X
group by F.X, F.Y
having count(F.X) > 1 or F.X < F.Y
order by F.X;