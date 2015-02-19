--Write a Pig Latin query that returns all the tweets that include the word 'favorite', ordered by tweet id

tweet_data = load '/user/student/abhinav/input/Pig/tweets.csv' using PigStorage(',') as (tweet_id, tweeted_message, user_login);
filtered_tweets = filter tweet_data by (tweeted_message matches '.*favorite.*');
ordered = order filtered_tweets by tweet_id;
dump ordered;
