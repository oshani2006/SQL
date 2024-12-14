CREATE TABLE Std_Details(
Std_ID varchar(200),
FName varchar(200) NOT NULL,
LName varchar(200),
Tel int( 10) NOT NULL UNIQUE,
DOB date NOT NULL,
Faculty_NameFK varchar(200) NOT NULL,
primary key(Std_ID),
foreign key(Faculty_NameFK)References Faculty(Faculty_Name));

CREATE TABLE Faculty(
Faculty_Name varchar(200),
contact int NOT NULL UNIQUE,
place varchar(200) NOT NULL,
Fee float NOT NULL CHECK(Fee>1000),
primary key(Faculty_Name));

alter table std_details drop primary key;

alter table std_details drop foreign key Faculty_NameFK;

alter table std_details add primary key(Std_ID);

alter table Faculty add primary key(Faculty_Name);

alter table std_details drop foreign key Faculty_NameFK;

drop table Faculty;

alter table std_details add foreign key(Faculty_NameFK) References Faculty(Faculty_Name);

insert into Faculty(Faculty_Name,contact,place,Fee)
values('sc','0771122334','kelaniya','10000');

insert into std_details(Std_ID,FName,LName,tel,DOB,Faculty_NameFK)
values
	('0001','oshani','dewmini','0760015680','2006.02.08','sc'),
	('0002','hansani','erandika','0760015681','2006.02.09','hu'),
	('0003','dewmi','nimesha','0760015682','2006.02.10','mgt'),
	('0004','sewmi','dinara','0760015683','2006.02.11','eng'),
	('0005','tenuri','dewmini','0760015684','2006.02.12','hu'),

insert into Faculty(Faculty_Name,contact,place,Fee)
values
   
     ('hu','0771122335','kelaniya','1000000'),
     ('mgt','0771122337','godagama','20000'),
     ('eng','0771122336','homagama','50000'),
     ('art','0771122338','kelaniya','200000');

 alter table std_details add column gender varchar(6);
 alter table std_details add column city varchar(100);
 alter table std_details modify column city varchar(200);
 alter table std_details rename column city to country;

 insert into std_details(Std_ID,FName,LName,tel,DOB,Faculty_NameFK,gender,country)
 values
      ('0006','randima','dulmini','0760015688','2006.02.13','sc','female','sri lanka'),
      ('0007','timira','anupama','0760015685','2006.02.14','hu','male','india'),
      ('0008','dimath','nimsadu','076001586','2006.02.15','mgt','male','india'),
      ('0009','hiruni','lakshika','0760015687','2006.02,16','sc','female','sri lanka');
 UPDATE std_details set country='sri lanka',gender='female' WHERE Std_ID='0001';
UPDATE std_details set country='sri lanka',gender='female' WHERE Std_ID='0002';
UPDATE std_details set country='india' WHERE Std_ID='0006';

SELECT Std_ID,FName,LName,tel from std_details;
SELECT * from std_details WHERE Std_ID='0001';
SELECT FName,LName from std_details WHERE true;
SELECT FName,LName from std_details WHERE Std_ID='0001' or Std_ID='0005';

SELECT Faculty_Name,place from Faculty where fee>='50000';

select * from Faculty where fee>='15000' and fee<='100000';
SELECT * from Faculty where fee between '15000' and '100000';

SELECT * from std_details limit 3;

SELECT sum(fee) from Faculty;

SELECT count(Faculty_Name) as faculty_count from Faculty;
select max(fee) as maximum_fee from Faculty; 
SELECT avg(fee) as avarage_fee Faculty;


select count(*) from Faculty WHERE fee>=15000;

select * from faculty order by fee ASC;
select * from faculty order by fee DESC;
select * from std_details order by Std_ID DESC;

DELETE from std_details WHERE Std_ID='0001';

UPDATE std_details set LName='erangika' WHERE Std_ID='0002';

insert into Faculty(Faculty_Name,contact,place,Fee)
values('science','0771122339','homagama','10000');

update faculty set fee=(fee+5000) where faculty_name='science';

update faculty set fee=(fee-1500) where true;

insert into Faculty(Faculty_Name,contact,place,Fee)
values
     ('science','0771222331','godagama','15000'),
     ('hu','077122332','maharagama','200000');

select * from std_details WHERE FName like "%ni";
select * from std_details WHERE FName like "t%";

update std_details set fname='abc' WHERE fname like "%w%";

alter table std_details add column salary float;

update std_details set salary=10000 where std_id='0002';
update std_details set salary=10000,country='india' where std_id='0003';
update std_details set salary=20000,country='sri lanka' where std_id='0004';
update std_details set salary=10000,country='india' where std_id='0005';
update std_details set salary=10000,country='india' where std_id='0006';
update std_details set salary=500000,country='india' where std_id='0007';
update std_details set salary=70000,country='sri lanka'where std_id='0008';

select Faculty_NameFK,sum(salary) as total_salary from std_details group by faculty_namefk;

select faculty_namefk,sum(salary) as total_salary,max(salary) as maximum_salary,min(salary) as minimum_salary from std_details group by faculty_namefk;

select distinct country from std_details;

alter table std_details add column salary float;

update std_details set salary=100000 where std_id='0001';
update std_details set salary=20000 where std_id='0002';
update std_details set salary=15000 where std_id='0003';
update std_details set salary=35000 where std_id='0004';
update std_details set salary=55000 where std_id='0005';
update std_details set salary=50000 where std_id='0006';
update std_details set salary=78000 where std_id='0007';
update std_details set salary=100000 where std_id='0008';
update std_details set salary=35000 where std_id='0009';

select faculty_id,sum(salary) as total_salary,max(salary) as maximum_salary from std_details group by faculty_id;