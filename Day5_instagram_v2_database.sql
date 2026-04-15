CREATE DATABASE instagram_advanced;
USE instagram_advanced;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    gender ENUM('male','female','other'),
    bio TEXT,
    profile_pic VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE followers (
    follower_id INT,
    following_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (follower_id, following_id),
    FOREIGN KEY (follower_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (following_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    image_url VARCHAR(255),
    caption TEXT,
    location VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE likes (
    like_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    post_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(user_id, post_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
);

CREATE TABLE comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    post_id INT,
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE
);

CREATE TABLE stories (
    story_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    media_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    expires_at TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

CREATE TABLE story_views (
    view_id INT AUTO_INCREMENT PRIMARY KEY,
    story_id INT,
    user_id INT,
    viewed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(story_id, user_id),
    FOREIGN KEY (story_id) REFERENCES stories(story_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE hashtags (
    hashtag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag VARCHAR(50) UNIQUE
);

CREATE TABLE post_hashtags (
    post_id INT,
    hashtag_id INT,
    PRIMARY KEY (post_id, hashtag_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (hashtag_id) REFERENCES hashtags(hashtag_id) ON DELETE CASCADE
);

CREATE TABLE messages (
    message_id INT AUTO_INCREMENT PRIMARY KEY,
    sender_id INT,
    receiver_id INT,
    message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES users(user_id),
    FOREIGN KEY (receiver_id) REFERENCES users(user_id)
);

INSERT INTO users (username, email, password_hash, phone, gender, bio, profile_pic)
VALUES
('tanveer', 'tanveer@gmail.com', 'hash1', '9876543210', 'male', 'Data scientist', 'pic1.jpg'),
('john', 'john@gmail.com', 'hash2', '9123456780', 'male', 'Traveler', 'pic2.jpg'),
('sara', 'sara@gmail.com', 'hash3', '9988776655', 'female', 'Photographer', 'pic3.jpg'),
('alex', 'alex@gmail.com', 'hash4', '9871234560', 'other', 'Tech lover', 'pic4.jpg');

INSERT INTO followers (follower_id, following_id)
VALUES
(1,2),
(1,3),
(2,3),
(3,1),
(4,1);

INSERT INTO posts (user_id, image_url, caption, location)
VALUES
(1, 'post1.jpg', 'Enjoying life', 'Hyderabad'),
(2, 'post2.jpg', 'Travel vibes ', 'Goa'),
(3, 'post3.jpg', 'Nature love ', 'Kerala'),
(1, 'post4.jpg', 'Coding time ', 'Bangalore');

INSERT INTO likes (user_id, post_id)
VALUES
(2,1),
(3,1),
(1,2),
(4,2),
(1,3);

INSERT INTO comments (user_id, post_id, comment)
VALUES
(2,1,'Nice post!'),
(3,1,'Awesome '),
(1,2,'Great place!'),
(4,3,'Beautiful pic'),
(2,4,'Keep coding!');

INSERT INTO stories (user_id, media_url, expires_at)
VALUES
(1, 'story1.jpg', NOW() + INTERVAL 1 DAY),
(2, 'story2.jpg', NOW() + INTERVAL 1 DAY),
(3, 'story3.jpg', NOW() + INTERVAL 1 DAY);

INSERT INTO story_views (story_id, user_id)
VALUES
(1,2),
(1,3),
(2,1),
(3,1),
(3,2);

INSERT INTO hashtags (tag)
VALUES
('travel'),
('coding'),
('nature'),
('fun');

INSERT INTO post_hashtags (post_id, hashtag_id)
VALUES
(1,4),
(2,1),
(3,3),
(4,2);

INSERT INTO messages (sender_id, receiver_id, message)
VALUES
(1,2,'Hey bro!'),
(2,1,'Hello!'),
(3,1,'Nice post'),
(4,2,'How are you?');

select * from messages;

