USE Project3;
select extract(week from occurred_at) as week, extract(year from occurred_at) as year, device,
count(distinct user_id) as count from events
where event_type='engagement'
group by 1,2,3
order by 1,2,3;