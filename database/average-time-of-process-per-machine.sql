select a.machine_id,
round(
    (select avg(a1.timestamp)from activity a1 where a1.machine_id = a.machine_id and a1.activity_type = 'end') -
    (select avg(a1.timestamp)from activity a1 where a1.machine_id = a.machine_id and a1.activity_type = 'start'),3

) as processing_time
from activity a group by a.machine_id