select distinct hashtagname, state from user u inner join newtweet n on u.screen_name = n.posting_user inner join tagged t on t.tid = n.tid where state in('ohio','alaska','alabama') and month_posted = 1 and year_posted = 2016 order by hashtagname;