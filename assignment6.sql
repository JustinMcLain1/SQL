#justin McLain z1910087 csci 466 spring 2021 assignment 6

SET FOREIGN_KEY_CHECKS = 0; #allows tables to be deleted even with foreign keys
DROP TABLE IF EXISTS Dog; -- checks if table exists if not nothing happens
DROP TABLE IF EXISTS Visit; -- checks if table exists if not nothing happens
SET FOREIGN_KEY_CHECKS = 1; #turns back on foreign key constraints
--this is for step 1 of assignment 6


CREATE TABLE Dog (
dog_id int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT, #dog id auto increments their ID
breed VARCHAR(20), #dog breed name varying size
name VARCHAR(15), #dog name varying size
weight float #weight of dog to one precision
);  --this is for number 2 on assignment 6


INSERT INTO Dog (breed,name,weight) -- line 20
VALUES('mutt','Stan','154.2'), -- this is creating data for the table
('corgi','Billy','25'),
('poodle','Stacy','35'),
('Great Dane','Henry','180'),
('Husky','borat','53.3'),
('Chow Chow','java', '45.6')
; --this is for step 3 in assignment 6


DESCRIBE Dog; -- line 30 from step 4, displays the table

SELECT * FROM Dog; -- from step 5, displays data in table

CREATE TABLE Visit (
Visit_id int(10) NOT NULL AUTO_INCREMENT, #visiter id auto fills and is primary key must have value
date DATE, #holds date of visit
duration TIME, #how long the visit lasted
dog_id int(10),
PRIMARY KEY (Visit_id),
FOREIGN KEY (dog_id) REFERENCES Dog(dog_id)
); --this is for step 6

INSERT INTO Visit (dog_id,date,duration) 
VALUES('1','2020-10-10','01:10:32'), -- this is creating data for the table
('2','2019-12-08','00:30:32'),
('3','2018-06-15','02:00:42'),
('5','2019-01-17','00:45:12'),
('6','2020-05-26','00:34:33'),
('4','2020-03-23','00:50:23'),
('4','2016-06-19','01:56:34'),
('2','2018-08-09','01:12:13'),
('1','2019-02-03','02:08:23')
; --this is for step 7

DESCRIBE Visit; -- step 8

SELECT * FROM Visit; -- step 9

ALTER TABLE Visit ADD billing FLOAT(10); -- step 10

UPDATE Visit
SET billing = '2561.63'
WHERE Visit_id = 1;

UPDATE Visit
SET billing = '8920.04'
WHERE Visit_id = 2;

UPDATE Visit
SET billing = '8239.49'
WHERE Visit_id = 3;

UPDATE Visit
SET billing = '7446.40'
WHERE Visit_id = 4;

UPDATE Visit
SET billing = '3581.33'
WHERE Visit_id = 5;

UPDATE Visit
SET billing = '5438.79'
WHERE Visit_id = 6;

UPDATE Visit
SET billing = '9585.48'
WHERE Visit_id = 7;

UPDATE Visit
SET billing = '8879.55'
WHERE Visit_id = 8;

UPDATE Visit
SET billing = '3515.01'
WHERE Visit_id = 9
; -- step 11

SELECT * FROM Visit; --step 12
  




