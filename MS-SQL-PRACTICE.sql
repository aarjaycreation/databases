CREATE DATABASE sample1

--drop database 
DROP DATABASE sample1

--use database
USE [sample1]
GO
--rename database
ALTER DATABASE sample1 MODIFY NAME = sample2
sp_renameDB 'sample2','sample1'

--create table
CREATE TABLE tbl_Person(ID int NOT NULL PRIMARY KEY , name varchar(20) NOT NULL, email varchar(50) NOT NULL,gender int NOT NULL)


CREATE TABLE tbl_gander(ID int NOT NULL PRIMARY KEY ,gander varchar(20) NOT NULL)

--drop table
DROP TABLE tbl_Person

--insert table data
INSERT INTO tbl_Person(ID, name, email,gender) values (1,'rahul','rahul@gmail.com',1)
INSERT INTO tbl_Person(ID, name, email,gender) values (2,'satyam','satyam@gmail.com',1)
INSERT INTO tbl_Person(ID, name, email,gender) values (3,'rushi','rushi@gmail.com',NULL)
INSERT INTO tbl_Person(ID, name, email,gender) values (4,'reena','reena@gmail.com',2)
INSERT INTO tbl_Person(ID, name, email,gender) values (5,'kajal','kajal@gmail.com',2)
INSERT INTO tbl_Person(ID, name, email,gender) values (6,'unkonwn','unkonwn@gmail.com',3)

INSERT INTO tbl_gander(ID,gander) VALUES (1,'male')
INSERT INTO tbl_gander(ID,gander) VALUES (2,'female')
INSERT INTO tbl_gander(ID,gander) VALUES (3,'unkonwn')

--not null == null 
ALTER TABLE tbl_Person ALTER COLUMN gender int NULL
--select 
SELECT * FROM tbl_Person
SELECT * FROM tbl_gander

--To add a foreign key reference using a query
Alter table tbl_Person
add constraint tbl_Person_gender_FK FOREIGN KEY (gender) references tbl_gander(ID)







--To add a foreign key reference using a query
ALTER TABLE tbl_Person CONSTRAINT tbl_Person_gender_FK FOREIGN KEY 
(Gender) REFERENCES tblGender(ID)