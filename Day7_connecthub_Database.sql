-- createing the databse
CREATE DATABASE connecthub;
use connecthub;

-- createing the user table

create table users(user_id int primary key auto_increment, 
email varchar(250) unique not null,
city varchar(250) not null,
created_at timestamp default current_timestamp);

-- creating the posts table

create table posts(post_id int primary key auto_increment, 
user_id int, content text,
created_at timestamp default current_timestamp,
foreign key (user_id) references users(user_id) on delete cascade);

-- creating the likes table

create table likes(like_id int primary key auto_increment,
 user_id int, 
 post_id int,
 foreign key(user_id) references users(user_id) on delete cascade,
 foreign key(post_id) references posts(post_id) on delete cascade);
 
 -- creating the follows table
 
create table follows(follow_id int primary key auto_increment,
following_id int,
foreign key(follow_id) references users(user_id) on delete cascade,
foreign key(following_id) references users(user_id) on delete cascade);

INSERT INTO users (email, city) VALUES
('tanveer@gmail.com', 'Hyderabad'),
('rahul@gmail.com', 'Bangalore'),
('sneha@gmail.com', 'Chennai'),
('arjun@gmail.com', 'Mumbai'),
('meena@gmail.com', 'Delhi');

select * from users;

INSERT INTO posts (user_id, content) VALUES
(1, 'Hello world! My first post'),
(2, 'Learning SQL is fun'),
(3, 'Enjoying my vacation'),
(1, 'Working on my project'),
(4, 'Good morning everyone');

INSERT INTO likes (user_id, post_id) VALUES
(2, 1),
(3, 1),
(1, 2),
(4, 3),
(5, 2),
(2, 4);

INSERT INTO follows (follow_id, following_id) VALUES
(1, 2),
(1, 3),
(2, 3),
(3, 4),
(4, 1),
(5, 2);

select * from follows;

select * from posts;