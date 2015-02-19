--Write a Pig Latin query that outputs the login of all users in NY state

userdata = load '/user/student/abhinav/input/Pig/users.csv' using PigStorage(',') as (userlogin:chararray, username:chararray, state:chararray);
statedata = filter userdata by state == 'NY';
dump statedata;
