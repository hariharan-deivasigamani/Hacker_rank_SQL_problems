'https://www.hackerrank.com/challenges/asian-population/problem'


select city.name from city,country
where city.countrycode=country.code and continent ='Africa';