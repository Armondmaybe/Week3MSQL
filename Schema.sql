CREATE DATABASE socialMedia;
CREATE TABLE user_data(
user_id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(50) NOT NULL,
email VARCHAR(150)NOT NULL,
userPW VARCHAR(15)NOT NULL,
birth_date DATE NOT NULL,
PRIMARY KEY(user_id)
);

CREATE TABLE post(
post_id INT NOT NULL AUTO_INCREMENT,
user_id INT,
content VARCHAR(1000)NOT NULL,
post_date DATE NOT NULL,
PRIMARY KEY(post_id),
FOREIGN KEY(user_id) REFERENCES user_data(user_id)
);

CREATE TABLE comments(
user_id INT,
post_id INT,
comment_content VARCHAR(1000),
comment_date DATE NOT NULL,
PRIMARY KEY(user_id,post_id),
FOREIGN KEY(user_id) REFERENCES user_data(user_id),
FOREIGN KEY(post_id) REFERENCES post(post_id)
);

