select concat(Name, '(', substring(Occupation,1,1), ')')
from OCCUPATIONS
order by Name asc;

select concat('There are a total of ', count(Occupation), ' ', lower(Occupation), 's.') as total
from OCCUPATIONS
group by Occupation
order by total asc;