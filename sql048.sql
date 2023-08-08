'https://www.hackerrank.com/challenges/symmetric-pairs/problem'


SELECT f1.x,f1.y FROM functions AS f1
WHERE f1.x = f1.y AND
(SELECT count(*) FROM functions WHERE x=f1.x AND y=f1.y)>1
UNION
SELECT f1.x,f1.y FROM functions AS f1
WHERE EXISTS(SELECT X,Y FROM functions WHERE Y=f1.x AND x=f1.y AND f1.x<x)
ORDER BY X;
