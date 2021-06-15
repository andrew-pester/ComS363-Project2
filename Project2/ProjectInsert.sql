LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/user.txt'
INTO TABLE user
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(screen_name,name,sub_category,category,state,numFollowers, numFollowing);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tweets.txt'
INTO TABLE newtweet
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid,textbody,retweet_count,retweeted,@col5,posting_user)
set day_posted= day(str_to_date(@col5, '%Y-%m-%d %H:%i:%s')),
month_posted= month(str_to_date(@col5, '%Y-%m-%d %H:%i:%s')),
year_posted= year(str_to_date(@col5, '%Y-%m-%d %H:%i:%s'));
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/mentioned.txt'
INTO TABLE mentioned
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid,screen_name);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tagged.txt'
INTO TABLE tagged
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid,hashtagname);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/urlused.txt'
INTO TABLE urlused
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid,url);
update user set state = 'Florida' where state = 'FL';
update user set state = 'Alabama' where state = 'AL';
update user set state = 'Alaska' where state = 'AK';
update user set state = 'Arizona' where state = 'AZ';
update user set state = 'Arkansas' where state = 'AR';
update user set state = 'California' where state = 'CA';
update user set state = 'Connecticut' where state = 'CT';
update user set state = 'Delaware' where state = 'DE';
update user set state = 'District of Columbia' where state = 'DC';
update user set state = 'Florida' where state = 'FL';
update user set state = 'Georgia' where state = 'GA';
update user set state = 'Hawaii' where state = 'HI';
update user set state = 'Idaho' where state = 'ID';
update user set state = 'Illinois' where state = 'IL';
update user set state = 'Indiana' where state = 'IN';
update user set state = 'Iowa' where state = 'IA';
update user set state = 'Kansas' where state = 'KS';
update user set state = 'Kentucky' where state = 'KY';
update user set state = 'Louisiana' where state = 'LA';
update user set state = 'Maine' where state = 'ME';
update user set state = 'Maryland' where state = 'MD';
update user set state = 'Massachusetts' where state = 'MA';
update user set state = 'Michigan' where state = 'MI';
update user set state = 'Minnesota' where state = 'MN';
update user set state = 'Mississippi' where state = 'MS';
update user set state = 'Missouri' where state = 'MO';
update user set state = 'Montana' where state = 'MT';
update user set state = 'Nebraska' where state = 'NE';
update user set state = 'Nevada' where state = 'NV';
update user set state = 'New Hampshire' where state = 'NH';
update user set state = 'New Jersey' where state = 'NJ';
update user set state = 'New Mexico' where state = 'NM';
update user set state = 'New York' where state = 'NY';
update user set state = 'North Carolina' where state = 'NC';
update user set state = 'North Dakota' where state = 'ND';
update user set state = 'Ohio' where state = 'OH';
update user set state = 'Oklahoma' where state = 'OK';
update user set state = 'Oregon' where state = 'OR';
update user set state = 'Pennsylvania' where state = 'PA';
update user set state = 'Rhode Island' where state = 'RI';
update user set state = 'South Carolina' where state = 'SC';
update user set state = 'South Dakota' where state = 'SD';
update user set state = 'Tennessee' where state = 'TN';
update user set state = 'Texas' where state = 'TX';
update user set state = 'Utah' where state = 'UT';
update user set state = 'Vermont' where state = 'VT';
update user set state = 'Virginia' where state = 'VA';
update user set state = 'Washington' where state = 'WA';
update user set state = 'West Virginia' where state = 'WV';
update user set state = 'Wisconsin' where state = 'WI';
update user set state = 'Wyoming' where state = 'WY';