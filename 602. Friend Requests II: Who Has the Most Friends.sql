select requester_id as id , count(requester_id) as num from
(select requester_id from RequestAccepted union all select accepter_id from RequestAccepted) AS allData GROUP BY requester_id
ORDER BY num DESC limit 1;
