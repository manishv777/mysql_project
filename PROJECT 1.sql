CREATE DATABASE manishdb;                                       -- CREATE NEW DATABASE
SHOW DATABASES;                                                 -- SHOW DATABASE , HOW MANY DATABASE ARE CREATED 

USE manishdb;                                                   -- Its USED TO RETURN THE DATABASE   

CREATE TABLE student(                                           -- CREAE NEW TABLES 
Sid INT,
Sname VARCHAR (50),
City VARCHAR (50),
Gender CHAR CHECK (Gender IN ('M','F')),
DOB DATE NOT NULL
);

DESC student;                                                  --  DESCRIBE THE TABLE 
SHOW TABLES;
SELECT * FROM student;

# INSERT COMMOND 
INSERT INTO student VALUE
(1,'MANISH','MUMBAI','M','1998-05-06',"40"),
(2,'RAJESH','MUMBAI','M','2002-05-30',"50"),
(3,'SATISH','RAJGADH','F','2001-02-11',"58"),
(4,'POOJA','SURAT','F','2003-05-03',"49");

DROP TABLE student;
INSERT INTO student VALUE 
(5,'INDRA','RAJSATHAN','F','1998-09-13',"59");

ALTER TABLE student ADD COLUMN marks INT NOT NULL;


# SELECT COMMOND 
SELECT * FROM student;
SELECT Sname ,DOB,City FROM student;

# WHARE CLOUSE 
SELECT Sname ,DOB, City FROM student WHERE City="MUMBAI";                      
SELECT Sname ,DOB, City FROM student WHERE City="SURAT";
SELECT Sname ,DOB, City FROM student WHERE Gender="F";
SELECT Sname ,DOB, City FROM student WHERE Gender="M";

# AND OR  OPERATOR 
SELECT * FROM student WHERE Sid="2" AND City ="MUMBAI";
SELECT * FROM student WHERE Sid ="2" OR city="MUMBAI";


# UPDATE  COMMOND 
UPDATE student SET City ='JAUNPUR' WHERE Sid= '3';
UPDATE student SET Sname ='AYUSH' WHERE Sid= '1';
UPDATE student SET DOB = '2000-05-30'WHERE Sid ='2' AND City='MUMBAI';
UPDATE student SET sid ='101'  WHERE Sid='1';
UPDATE student SET sid ='102'  WHERE Sid='2';
UPDATE student SET sid ='103'  WHERE Sid='3';
UPDATE student SET sid ='104'  WHERE Sid='4';
UPDATE student SET sid ='105'  WHERE Sid='5';

# LIMIT CLAUSE
SELECT * FROM student LIMIT 2;
SELECT * FROM student LIMIT 4;
SELECT * FROM student LIMIT 2 OFFSET 1;


# ORDER BY CLAUSE
SELECT *
FROM student 
ORDER BY City ASC;                                      -- ASCENDING ORDER

SELECT *
FROM student 
ORDER BY City DESC;                                    -- DESCENDING ORDER 

# ORDER BY  WITH LIMIT  CLAUSE
SELECT *                                               -- DESCENDIG TOP 3 ORDER
FROM student 
ORDER BY City DESC
LIMIT 3;


# AGGREGATE FUNTIONS
SELECT max(marks)
FROM student;

SELECT min(marks)
FROM student;

SELECT marks
FROM student;

SELECT avg (marks)
FROM student;
 
 SELECT sum(marks)
 FROM student;
 
 SELECT count(marks)
 FROM student;
 
 #GROUP BY CLAUSE 
 SELECT City ,  count(Sid)
 FROM student
 GROUP BY city ;
 
 SELECT City , Sname , count(Sid)
 FROM student
 GROUP BY city ,Sname ;
 
 SELECT City ,  Avg (Sid)
 FROM student
 GROUP BY city ;
 
 # HAVING CLAUSE 
 SELECT City 
 FROM student
 GROUP BY City
 HAVING max(marks)>50;
 
 
SELECT * FROM student WHERE Sid>2;
SELECT * FROM student WHERE Sid>4;
SELECT * FROM student WHERE Sname ="AYUSH" OR Sname ="INDRA" OR Sname ="POOJA";
SELECT * FROM student WHERE Sname IN ("SATISH","AYUSH","INDRA");
SELECT * FROM student WHERE Sname LIKE "A%";
SELECT * FROM student WHERE Sname LIKE "%A";
SELECT * FROM student WHERE Sname LIKE "_I";   

INSERT INTO student VALUE 
("6","DHEERAJ","MEERA ROAD","M","1998-06-04");
 
 SELECT * FROM student;
 # DELETE COMMAND 
 DELETE FROM student WHERE Sid="6";                         
 
 # delete is used to delete specific record (DML Command), can roll back,
 # DELETE FROM student WHERE Sid ="6";
 # truncate used to delete table and compare to delete its fast (DDL), can't roll back,
 # TRUNCATTE TABLE student ;
 
 CREATE TABLE course(
 Sid INT,
 cname VARCHAR (50)
 );
 
 
 DESC course;
 SELECT* FROM course;
 
 
 # ALTER COMMAND 
 ALTER TABLE course ADD CONSTRAINT Spk PRIMARY KEY(Sid);
 ALTER TABLE course ADD COLUMN fees INT NOT NULL;
 ALTER TABLE course ADD COLUMN cname VARCHAR(50) UNIQUE , ADD COLUMN fees INT NOT NULL;
 ALTER TABLE course DROP COLUMN cname;
 ALTER TABLE course DROP COLUMN fees;
 ALTER TABLE course ADD COLUMN DIC INT NOT NULL;
 
 # RENAME COMMAND 
 ALTER TABLE course RENAME COLUMN fees TO total_fees;
 
 # MODIFY & CHANGE COMMAND 
 ALTER TABLE course MODIFY DIC INT NOT NULL AFTER cname;
 ALTER TABLE course DROP COLUMN DIC;
 
 
 INSERT INTO course (Sid,cname,total_fees) VALUE 
 (101,"FULLSTOCK JAVA","60000"),
 (102,"FULLSTOCK PYTHON","70000"),
 (103,"FULLSTOCK WEB","80000");
 
 
 # TRUNCATE COMMAND                                     
 TRUNCATE TABLE course;                                  -- TRUNCATE TO DELETE TABLE DATA
 
 
 SELECT * FROM student;
 SELECT * FROM course;
 
 #  INNER JOIN 
 SELECT *
 FROM student
 INNER JOIN course
 ON student. Sid = course.Sid;
 
 # LEFT JOIN 
 SELECT *
 FROM student 
 LEFT JOIN course
 ON student.Sid = course . Sid;
 
 # RIGHT JOIN 
 SELECT *
 FROM student 
 RIGHT JOIN course 
 ON student.Sid = course . Sid;
 
 # FULL JOIN
 SELECT * FROM student 
 LEFT JOIN course
 ON studnet. Sid = course .Sid
 UNION
 SELECT * FROM student 
 RIGHT JOIN course 
 ON student . Sid = course . Sid;                      
 
 # LEFT EXCLUSIVE JOIN 
 SELECT *
 FROM student 
 LEFT JOIN course
 ON student.Sid = course . Sid
 WHERE course.Sid IS NULL;
 
 # RIGHT EXCLUSIVE JOIN 
 SELECT *
 FROM student 
 RIGHT JOIN course 
 ON student.Sid = course . Sid
 WHERE student. Sid IS NULL;
 
 # UNION 
 SELECT Sname FROM student
 UNION 
 SELECT Sname FROM student;
 
 SELECT Sname FROM student
 UNION 
 SELECT cname FROM course;
 
 CREATE VIEW view1 AS
 SELECT Sid, Sname, marks FROM student;
 
 SELECT * FROM view1;
 
 DROP VIEW view1;
 
 
 
  
 

 
 
 
 
 
 
 


