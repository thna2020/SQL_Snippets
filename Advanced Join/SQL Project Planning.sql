set sql_mode = '';
select Start_Date, End_Date
from 
    (select Start_Date from Projects where Start_Date not in (select End_Date from Projects)) subq1,
    (select End_Date from Projects where End_Date not in (select Start_Date from Projects)) subq2
where Start_Date < End_Date
group by Start_Date
order by datediff(End_Date, Start_Date) asc, Start_Date asc;