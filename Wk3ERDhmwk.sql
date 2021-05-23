create database if not exists smu;

use smu;

drop table if exists Comment;
drop table if exists Post;
drop table if exists Users;

create table if not exists Users(
user_id int(11) not null auto_increment,
Username varchar(25) not null,
Email varchar(25) not null,
Password char(10) not null,
primary key(user_id)
);

create table if not exists Post(
post_id int(11) not null auto_increment,
user_id int(11) not null,
Post_Content varchar(250),
Time_Posted datetime,
primary key(post_id),
foreign key(user_id) references Users(user_id)
);

create table if not exists Comment(
comment_id int(11) not null,
user_id int(11) not null,
post_id int(11) not null,
Comment_Content varchar(250),
Time_Commented datetime default current_timestamp on update current_timestamp, 
primary key(comment_id),
foreign key(user_id) references Users(user_id),
foreign key(post_id) references Post(post_id)
);

select * from users;
select * from post;
select * from comment;

insert into users( username, email, password) values ("FirstUser", "user1@gmail.com", 1111)
