CREATE DATABASE TravelGoDB;
USE TravelGoDB;
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    transport_type VARCHAR(50), -- Bus, Train, Flight
    from_location VARCHAR(100),
    to_location VARCHAR(100),
    travel_date DATE,
    seat_number VARCHAR(10),
    status VARCHAR(50), -- Confirmed / Cancelled
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);
CREATE TABLE Hotels (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100),
    type VARCHAR(50), -- Luxury, Budget
    price DECIMAL(10,2),
    available_rooms INT
);
SHOW DATABASES;
USE TravelGoDB;
SHOW TABLES;
SELECT * FROM users;

DROP TABLE user;

SELECT * FROM users;
USE TravelGoDB;
DESCRIBE user;

drop table user;
show tables;



