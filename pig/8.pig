--Write a Pig Latin query that returns the name of users that posted no tweets

user_data = load '/user/student/abhinav/input/Pig/users.csv' using PigStorage(',') as (user_login, user_name, state);
tweet_data = load '/user/student/abhinav/input/Pig/tweets.csv' using PigStorage(',') as (tweet_id, tweeted_message, user_login);
jnd = join user_data by user_login left, tweet_data by user_login;
grped = group jnd by user_name;
tweet_count = foreach grped generate group, COUNT(jnd.tweet_id);
filtered = filter tweet_count by $1 == 0;
dump filtered;
