connect 'jdbc:derby://localhost:1527/mydb;create=true;user=Shrihari;password=123';
create table Customer (EmailID varchar2(100), Password varchar2(20), Name varchar2(20), Gender ENUM('MALE,'FEMALE'),Age number(3), Address varchar2(100));
