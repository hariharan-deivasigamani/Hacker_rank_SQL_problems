'https://www.hackerrank.com/challenges/weather-observation-station-8/problem'


SELECT DISTINCT city FROM station
WHERE substring(city,1,1) IN ('a','e','i','o','u') AND 
substring(reverse(city),1,1) IN ('a','e','i','o','u');