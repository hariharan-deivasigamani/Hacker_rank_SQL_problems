'https://www.hackerrank.com/challenges/weather-observation-station-7/problem'


select distinct city from station
where city LIKE "%A" or city LIKE "%E" or city LIKE "%I" or city LIKE "%O" or city LIKE "%U";