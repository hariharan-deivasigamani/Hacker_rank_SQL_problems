'https://www.hackerrank.com/challenges/the-company/problem'


select      c.company_code,
            founder,
            count(Distinct lm.lead_manager_code),
            count(Distinct sm.senior_manager_code),
            count(Distinct m.manager_code),
            count(Distinct e.employee_code)
FROM        COMPANY c
LEFT JOIN lead_manager lm ON lm.company_code = c.company_code
LEFT JOIN senior_manager sm ON sm.lead_manager_code = lm.lead_manager_code
LEFT JOIN manager m ON m.senior_manager_code = sm.senior_manager_code
LEFT JOIN employee e ON e.manager_code = m.manager_code

GROUP BY c.company_code,founder
ORDER BY company_code asc