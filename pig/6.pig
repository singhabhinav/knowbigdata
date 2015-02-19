--Write a Pig Latin query that returns the number of tweets for each user name (not login), ordered from most active (maximum number of tweets) to least  (minimum number of tweets) active users

user_data = load '/user/student/abhinav/input/Pig/users.csv' using PigStorage(',') as (user_login, user_name, state);
tweet_data = load '/user/student/abhinav/input/Pig/tweets.csv' using PigStorage(',') as (tweet_id, tweeted_message, user_login);
jnd = join user_data by user_login, tweet_data by user_login;
grped = group jnd by user_name;
tweet_count = foreach grped generate group, COUNT(jnd.tweet_id);
ordered = order tweet_count by $1 desc;
dump ordered;
