select Name
from STUDENTS
where marks > 75
order by right(Name, 3), ID asc;