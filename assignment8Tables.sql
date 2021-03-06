#justin McLain z1910087 csci 466 spring 2021 assignment 8

SET FOREIGN_KEY_CHECKS = 0; #allows tables to be deleted even with foreign keys
DROP TABLE IF EXISTS S; -- checks if table exists if not nothing happens
DROP TABLE IF EXISTS P; -- checks if table exists if not nothing happens
DROP TABLE IF EXISTS SP;
SET FOREIGN_KEY_CHECKS = 1; #turns back on foreign key constraints

CREATE TABLE S (
S VARCHAR(10) PRIMARY KEY NOT NULL,
SNAME VARCHAR(10) NOT NULL,
STATUS INT(10) NOT NULL,
CITY VARCHAR(10) NOT NULL
);

INSERT INTO S (S,SNAME,STATUS,CITY)
VALUES('S1','Smith','20','London'),
('S2','Jones','10','Paris'),
('S3','Blake','30','Paris'),
('S4','Clark','20','London'),
('S5','Adams','30','Athens')
;

Describe S;

SELECT * FROM S;

CREATE TABLE P (
P VARCHAR(10) PRIMARY KEY NOT NULL,
PNAME VARCHAR(10) NOT NULL,
COLOR VARCHAR(10) NOT NULL,
WEIGHT INT(10) NOT NULL
);

INSERT INTO P (P,PNAME,COLOR,WEIGHT)
VALUES('P1','Nut','Red','12'),
('P2','Bolt','Green','17'),
('P3','Screw','Blue','17'),
('P4','Screw','Red','14'),
('P5','Cam','Blue','12'),
('P6','Cog','Red','19')
;

Describe P;

SELECT * FROM P;

CREATE TABLE SP (
S VARCHAR(10) NOT NULL,
P VARCHAR(10) NOT NULL,
QTY INT(10) NOT NULL,
FOREIGN KEY (S) REFERENCES S(S),
FOREIGN KEY (P) REFERENCES P(P)
);


INSERT INTO SP (S,P,QTY)
VALUES('S1','P1','300'),
('S1','P2','200'),
('S1','P3','400'),
('S1','P4','200'),
('S1','P5','100'),
('S1','P6','100'),
('S2','P1','300'),
('S2','P2','400'),
('S3','P2','200'),
('S4','P2','200'),
('S4','P4','300'),
('S4','P5','400')
;

Describe SP;

SELECT * FROM SP;

 