'https://www.hackerrank.com/challenges/salary-of-employees/problem'

select name from employee
where salary>2000 AND months<10
order by employee_id;