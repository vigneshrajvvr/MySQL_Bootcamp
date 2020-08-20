DROP DATABASE ig_clone;

CREATE DATABASE ig_clone;

USE ig_clone;

CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE photo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    image_url VARCHAR(255) NOT NULL,
    user_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES user(id)
);


CREATE TABLE comment (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    common_text VARCHAR(255) NOT NULL,    
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (photo_id) REFERENCES photo(id)
);