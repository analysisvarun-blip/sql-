# Q2: Number of matches played per season .
use cricket ;
show tables ;
select * from cricket_Data1 ;

# Q2: Number of matches played per season.
select season , count(*) as total_match_played from cricket_data1 group by season order by season desc ;

# Q3: Team with the highest number of wins.
select winner , count(*) as total_win from cricket_data1 group by winner order by total_win desc limit 1 ;

# Q4: Top 5 teams with the most wins.
select winner , count(*) as total_wins from cricket_Data1 group by winner order by total_wins limit 5 ;

# Q5: Count of matches won by the team that also won the toss.
select count(*) as toss_and_matchwin from cricket_data1 where toss_won = winner order by toss_and_matchwin desc ;

# Q6: Decision analysis: Toss winners choosing to Bat vs. Bowl.
select decision , count(*) as total from cricket_data1 group by decision ;

# Q7: Highest score recorded in the 1st innings.
select max(first_inning_score) as high_score from cricket_data1 ;

# Q8: Lowest score recorded in the 1st innings.
select min(first_inning_score) as high_score from cricket_data1 ;

# Q9: Highest successful run chase in the 2nd innings.
select  max(second_inning_score) as high_Score from cricket_data1 ;

# Q10: Player who received the 'Player of the Match' award the most times.
select player , count(*) as awards from cricket_data1 group by player order by awards desc limit 1 ;

# Q11: Top 5 'Player of the Match' award winners.
select player , count(*) as awards from cricket_data1 group by player order by awards desc limit 5 ;

# Q12: Performance comparison: Home team vs. Away team.
select home_team ,  count(*) as performance_Score from cricket_data1 group by home_team  order by performance_score desc;

# Q13: Venue that has hosted the highest number of matches.
select venue_name , count(*) as total_host from cricket_data1 group by venue_name order by total_host desc limit 1 ;

