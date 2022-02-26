select S.Name
from Students S
    join Friends F using(ID)
    join Packages P1 on S.ID = P1.ID
    join Packages P2 on F.Friend_ID = P2.ID
where P2.Salary > P1.salary
order by P2.salary;