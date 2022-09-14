--create database
CREATE DATABASE sample1

--drop database 
DROP DATABASE sample1

--use database
USE [sample1]
GO
--rename
ALTER DATABASE sample1 MODIFY NAME = sample2
sp_renameDB 'sample2','sample1'

--create table
CREATE TABLE tbl_Person(ID int NOT NULL PRIMARY KEY , name varchar(20) NOT NULL, email varchar(50) NOT NULL,gender int NOT NULL)

--drop table
DROP TABLE tbl_Person

