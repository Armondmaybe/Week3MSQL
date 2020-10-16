-- Users are created heere
INSERT INTO user_data(username,email,userPW,birth_date) 
VALUES("Mikey_Banks","Mike101@gmail.com","test12345","2000-05-06"),("Tim_west103","timmyJakes@gmail.com","test1234567","2000-12-11"),("Sebi123","sebiHeals@yahoo.com","test1234","2000-02-18");

-- Displays all users info
Select* from user_data;    
-- Post made by the users are created here
INSERT INTO post(user_id,content,post_date)
VALUES(4,"Does Pineapples Belong on Pizza?","2020-10-15");
INSERT INTO post(user_id,content,post_date)
VALUES(5,"Today's weather is awesome","2020-10-01");
INSERT INTO post(user_id,content,post_date)
VALUES(6,"Follow Your Dreams ","2020-10-15");
-- Displays all post made by each user
SELECT u.username,post_date,p.content AS "post made by user" 
FROM user_data u
INNER JOIN post p ON u.user_id = p.user_id; 
-- Comments made by each user
INSERT INTO comments(user_id,post_id,comment_content,comment_date)
VALUES (5,1,"DEFINTELY DUDEE!!!","2020-10-15"),(6,1,"OH NOOO not at all!","2020-10-15");
INSERT INTO comments(user_id,post_id,comment_content,comment_date)
VALUES (5,2,"I agree!","2020-10-15"),(4,2,"Wise words my friend","2020-10-15");
INSERT INTO comments(user_id,post_id,comment_content,comment_date)
VALUES (4,3,"We've had alot better!","2020-10-02"),(6,3,"Yup up mother nature is working her powers","2020-10-05");

SELECT * FROM comments;

SELECT p.post_date,concat(u.username," posted: ",p.content)As "user's Post", c.comment_content AS "Comments made by users refering to different post ",concat(c.user_id," commented on post ",c.post_id)AS "What post the user commented on",c.comment_date 
FROM user_data u
INNER JOIN comments c ON u.user_id = c.user_id
INNER JOIN post p 	ON u.user_id = p.user_id;


