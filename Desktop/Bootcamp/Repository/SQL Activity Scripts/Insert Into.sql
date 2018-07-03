DROP DATABASE IF EXISTS test2_db;

USE test_db;	

CREATE TABLE Favorite_Foods
	(
	food char(50) NOT NULL
    ,score int
	);

CREATE TABLE favorite_songs 
	(
    song char(100) NOT NULL
    ,artist char(50)
    ,score int
    );
    
CREATE TABLE favorite_movies
	(
    film varchar(100) NOT NULL
    ,five_times boolean DEFAULT false
    ,score int
    );



INSERT INTO favorite_foods (food, score)
VALUES ('flautas','7');

INSERT INTO favorite_foods (food, score)
VALUES ('potatoes','5');

INSERT INTO favorite_songs (song, score)
VALUES ('flautas','7');


SET SQL_SAFE_UPDATES = 0 

