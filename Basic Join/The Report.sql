select 
    case
        when Grades.Grade > 7 then Students.Name
        else NULL
    end as Names, 
    Grades.Grade, 
    Students.Marks
from Students
    join Grades 
        on Students.Marks between Grades.Min_Mark and Grades.Max_Mark
order by Grades.Grade desc, 
         Names asc,
         Students.Marks asc;