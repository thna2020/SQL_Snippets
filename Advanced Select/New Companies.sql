select C.company_code company, 
        C.founder founder, 
        count(distinct LM.lead_manager_code), 
        count(distinct SM.senior_manager_code), 
        count(distinct M.manager_code), 
        count(distinct E.employee_code)
from Company C, Lead_Manager LM, Senior_Manager SM, Manager M, Employee E
where C.company_code = LM.company_code and
        LM.lead_manager_code = SM.lead_manager_code and
        SM.senior_manager_code = M.senior_manager_code and
        M.manager_code = E.manager_code
group by company, founder
order by company asc;