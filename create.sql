CREATE DATABASE prueba;

CREATE TABLE users (
    id INTEGER NOT NULL AUTO_INCREMENT,
    username VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (username)
);

CREATE TABLE phone_numbers (
    id INTEGER NOT NULL AUTO_INCREMENT,
    phone VARCHAR(200) NOT NULL,
    users_id INTEGER NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (users_id) REFERENCES users (id)
);