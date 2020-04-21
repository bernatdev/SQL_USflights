SELECT COUNT(*) from flights;
SELECT Origin,AVG(ArrDelay),AVG(DepDelay) from flights group by origin ;
SELECT Origin,ColYear,ColMonth,AVG(ArrDelay) from flights group by Origin , ColYear, ColMonth ;
SELECT u.City,ColYear,ColMonth,AVG(ArrDelay) from flights f inner join usairports u on u.IATA=f.Origin group by u.City , ColYear, ColMonth ;
SELECT UniqueCarrier,ColYear,ColMonth,SUM(cancelled) from flights group by UniqueCarrier,ColYear,ColMonth order by SUM(cancelled) desc, uniquecarrier asc, colyear asc, colmonth asc
SELECT TailNum,sum(Distance) from flights WHERE TailNum != '' GROUP BY TailNum order by SUM(Distance) desc limit 10
SELECT UniqueCarrier,AVG(ArrDelay) FROM flights GROUP BY UniqueCarrier HAVING AVG(ArrDelay) > 10 ORDER BY AVG(ArrDelay) DESC