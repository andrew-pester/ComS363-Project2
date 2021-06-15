CREATE DATABASE  IF NOT EXISTS `test`;
  DROP TABLE IF EXISTS urlused;
  DROP TABLE IF EXISTS tagged;
  DROP TABLE IF EXISTS mentioned;  
  DROP TABLE IF EXISTS newtweet;  
  DROP TABLE IF EXISTS user;
  
  CREATE TABLE user(
  screen_name varchar(255) unique not null,
  name varchar(255),
  sub_category varchar(255) check(sub_category in( 'GOP' , 'Democrat' ,  'na' ,null)),
  category varchar(255) check(category in( 'senate_group' , 'presidential_candidate' , 'reporter' , 'senator' , 'general' ,null)),
   state  varchar(255) default 'na',
   numFollowers  bigint,
   numFollowing  bigint,
  primary key(screen_name)
  );
  CREATE TABLE newtweet(
   tid  bigint NOT NULL,
   textbody  text,
   retweet_count  int(11) DEFAULT NULL,
   retweeted  tinyint(1) DEFAULT NULL,
   day_posted  int DEFAULT NULL,
   month_posted  int DEFAULT NULL,
   year_posted  int default NULL,
   posting_user  varchar(255) default null,
  PRIMARY KEY (tid),
  FOREIGN KEY (posting_user) REFERENCES user(screen_name) ON DELETE CASCADE
  );
  create table  mentioned  (
   tid  bigint not null,
   screen_name  varchar(255) default null,
  foreign key( tid ) REFERENCES newtweet( tid ),
  foreign key(screen_name) references user(screen_name));
  CREATE TABLE  tagged (
   tid  bigint not null,
   hashtagname  varchar(255),
  foreign key ( tid ) references newtweet( tid ));
  create table  urlused (
   tid  bigint not null,
   url  varchar(1000),
  foreign key( tid ) references newtweet( tid )
  );
 
 
  
 
 
  
