CREATE DATABASE cinema;

USE cinema;

CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    genre VARCHAR(50),
    release_date DATE,
    director VARCHAR(100),
    duration INT
);

CREATE TABLE theaters (
    theater_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    capacity INT
);

CREATE TABLE screenings (
    screening_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT,
    theater_id INT,
    start_time DATETIME,
    FOREIGN KEY (movie_id) REFERENCES movies (movie_id),
    FOREIGN KEY (theater_id) REFERENCES theaters (theater_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    screening_id INT,
    customer_id INT,
    seat_number VARCHAR(10),
    purchase_date DATETIME,
    FOREIGN KEY (screening_id) REFERENCES screenings (screening_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);
