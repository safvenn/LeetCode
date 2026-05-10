# Write your MySQL query statement below
with temp as(
select id,(lag(temperature) over(order by recordDate)) t,temperature from weather
)
select id from temp where temperature > t