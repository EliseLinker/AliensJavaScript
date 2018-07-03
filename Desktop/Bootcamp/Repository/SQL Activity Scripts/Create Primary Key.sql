CREATE database animals_db;


USE test_db;

DROP TABLE people; 

CREATE TABLE people 
	(
	name 	varchar(50) NOT NULL
    ,age	int	NOT NULL
    ,sex	char(1)	
	,has_pet boolean
    ,pet_name varchar(50)
    ,pet_age int
    , id int auto_increment NOT NULL
    ,primary key (id, age)
    );

    
INSERT INTO people
	(name
	,age
    ,sex
    )
VALUES('Bob', 44, 'M');

INSERT INTO people
	(name
	,age
    )
VALUES('Alice', 24);


SELECT * 
FROM people;

INSERT INTO people (name, age, sex, has_pet, pet_name, pet_age)
VALUES ("Jacob", 35, 'M', true, "Misty", 10);

INSERT INTO people (name, age, sex, has_pet, pet_name, pet_age)
VALUES ("Ahmed", 44, 'M', true, "Rockington", 100);

INSERT INTO people (name, age,has_pet)
VALUES ("Peter", 30, false);

UPDATE people
SET has_pet = true
WHERE name = "Peter";

SELECT * FROM people;

ALTER TABLE people ADD pet_type VARCHAR(50) DEFAULT 'dog';

SELECT * from people;