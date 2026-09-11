-- Creating a new database
create database bankmanagementsystem;
show databases;

-- Using the created database
use bankmanagementsystem;

-- Personal details table
create table signup(formno varchar(20),name varchar(50),father_name varchar(50),dob varchar(20),gender varchar(20),email varchar(40),marital_status varchar(20),address varchar(100),city varchar(20),pincode varchar(20),state varchar(20));
select * from signup;

-- This table only stores additional user information while registring
create table signuptwo(formno varchar(20),religion varchar(20),category varchar(20),income varchar(20),education varchar(20),occupation varchar(40),pan varchar(20),aadhar varchar(100),seniorcitizen varchar(20),existingaccount varchar(20));
select * from signuptwo;

-- The signup three table keeps track of services and account details and stores new pin and account number
create table signupthree(formno varchar(20),accountType varchar(50),cardnumber varchar(25),pin varchar(10),facility varchar(400));
select * from signupthree;

-- The purpose of login table is only to use it while matching the existing user
create table login(formno varchar(20),cardnumber varchar(25),pin varchar(10));
select * from login;

-- Creating a new table to keep track of transactions like withdrawal and deposit
create table bank(pin varchar(10) NOT NULL,date varchar(50),type varchar(20),amount varchar(20));
select * from bank;

-- select * from bank where pin="7180";
-- drop table bank;
