'https://www.hackerrank.com/challenges/weather-observation-station-5/problem'


select city, length(city) from station order by length(city) desc limit 1;
select city, length(city) from station order by length(city), city asc limit 1;