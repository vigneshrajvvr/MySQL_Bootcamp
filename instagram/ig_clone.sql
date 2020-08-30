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

CREATE TABLE likes (
    user_id INT NOT NULL,
    photo_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES user(id),
    FOREIGN KEY(photo_id) REFERENCES photo(id),
    PRIMARY KEY(user_id, photo_id)
);

CREATE TABLE follow (
    follower_id INT,
    followee_id INT,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES user(id),
    FOREIGN KEY(followee_id) REFERENCES user(id),
    PRIMARY KEY(follower_id, followee_id)
);

CREATE TABLE tag (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT NOW()
);
  
CREATE TABLE photo_tag (
    photo_id INT NOT NULL,
    tag_id INT NOT NULL,
    FOREIGN KEY(photo_id) REFERENCES photo(id),
    FOREIGN KEY(tag_id) REFERENCES tag(id),
    PRIMARY KEY (photo_id, tag_id)
);