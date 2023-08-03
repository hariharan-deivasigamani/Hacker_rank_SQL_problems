'*https://www.hackerrank.com/challenges/average-population-of-each-continent/problem'


select country.continent,floor(avg(city.population)) from city inner join country on CITY.CountryCode = COUNTRY.Code
group by country.continent;