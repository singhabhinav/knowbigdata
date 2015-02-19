--Write the equivalent join as in previous question using Pig Latin

user_data = load '/user/student/abhinav/input/Pig/users.csv' using PigStorage(',') as (user_login, user_name, state);
tweet_data = load '/user/student/abhinav/input/Pig/tweets.csv' using PigStorage(',') as (tweet_id, tweeted_message, user_login);
jnd = join user_data by user_login, tweet_data by user_login;
dump jnd;
