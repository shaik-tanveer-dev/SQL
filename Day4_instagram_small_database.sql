-- Create Database
CREATE DATABASE instagram;
USE instagram;

-- USERS TABLE
CREATE TABLE users(
    user_id INT ,
    user_name VARCHAR(30),
    password VARCHAR(30),
    email VARCHAR(50),
    mobile VARCHAR(15),
    gender ENUM('M','F'),
    bio TEXT,
    dob DATE
);

-- POSTS TABLE
CREATE TABLE posts(
    post_id INT ,
    user_id INT,
    liked INT,
    comment_id INT,
    tags VARCHAR(50),
    description VARCHAR(255)
);

-- STORIES TABLE
CREATE TABLE stories(
    story_id INT,
    user_id INT,
    likes INT,
    comment_id INT,
    views INT
);

-- COMMENTS TABLE
CREATE TABLE comments(
    comment_id INT ,
    user_id INT,
    likes INT,
    comment_text VARCHAR(255)
);

-- INSERT DATA INTO USERS (5 records)

INSERT INTO users(user_name,password,email,mobile,gender,bio,dob) VALUES
('tanveer','pass123','tanveer@gmail.com','9876543210','M','Data Scientist','2003-05-10'),
('rahul','rahul123','rahul@gmail.com','9123456780','M','Developer','2002-07-15'),
('sneha','sneha123','sneha@gmail.com','9988776655','F','Designer','2003-02-20'),
('anil','anil123','anil@gmail.com','9012345678','M','Engineer','2001-11-30'),
('priya','priya123','priya@gmail.com','9090909090','F','Content Creator','2004-08-25');


-- INSERT DATA INTO POSTS (6–10 records → adding 8)

INSERT INTO posts(user_id,liked,comment_id,tags,description) VALUES
(1,100,1,'#AI','#AI project completed'),
(2,50,2,'#Coding','Learning Java'),
(3,75,3,'#Design','UI/UX design post'),
(4,20,4,'#Travel','Trip to Goa'),
(5,90,5,'#Food','Delicious food'),
(1,120,6,'#ML','Machine learning model'),
(2,60,7,'#Web','Full stack project'),
(3,30,8,'#Art','Creative art post');

-- INSERT DATA INTO STORIES (4 records)

INSERT INTO stories(user_id,likes,comment_id,views) VALUES
(1,40,1,200),
(2,25,2,150),
(3,30,3,180),
(4,20,4,100);

-- INSERT DATA INTO COMMENTS (10 records)

INSERT INTO comments(user_id,likes,comment_text) VALUES
(1,10,'Nice post'),
(2,5,'Great work'),
(3,8,'Amazing'),
(4,2,'Good'),
(5,6,'Interesting'),
(1,4,'Well done'),
(2,7,'Super'),
(3,3,'Cool'),
(4,5,'Nice design'),
(5,9,'Loved it');
