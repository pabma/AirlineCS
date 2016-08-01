--AUTHOR: SHRIHARI BHAT
--DATE: 1 JULY 2016
--Connecting to database
connect 'jdbc:derby://localhost:1527/mydb;create=true;user=Shrihari;password=123';
--Creating Tables 
CREATE TABLE Customer (EmailID varchar2(100), Password varchar2(20), Name varchar2(20), Gender ENUM('MALE','FEMALE'),Age number(3), Address varchar2(100));
CREATE TABLE Flight (FlightID varchar2(6), DepDate datetime, Source varchar2(3), Destination varchar2(3), DepTime datetime, ArrTime datetime, Capacity number(3), Cost number(3,4));
CREATE TABLE Ticket (PNR varchar2(6), FlightID varchar2(6), EmailID varchar2(100));
--Adding Constraints to Tables
ALTER TABLE Customer ADD CONSTRAINT ADD PRIMARY KEY (Email);
ALTER TABLE Flight ADD CONSTRAINT comp1 ADD PRIMARY KEY(FlightID,DepDate);-- Composite Key FlightID+Departure Date
ALTER TABLE Ticket ADD CONSTRAINT PRIMARY KEY(PNR);
------------------------------------------------------------------
------------------------------------------------------------------
