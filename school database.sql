create database university;
CREATE TABLE STD_DETAILS(
std_id varchar (10),
FName varchar(200) NOT NULL,
LName varchar(200),
Tel int (10) NOT NULL UNIQUE,
DOB date NOT NULL,
Faculty_id varchar(200) NOT NULL,
primary key(Std_ID),
foreign key(Faculty_NameFK)References Faculty(Faculty_Name));

create table faculty(
faculty_name varchar(200),
contact int NOT NULL UNIQUE,
place varchar(200) NOT NULL,
fee float check (fee>10000),
primary key(faculty_name));

insert into std_details(std_id,FName,LName,Tel,DOB,Faculty_NameFK)
values
    ('0001','oshani','dewmini','0760015680','2006.02.08','sc'),
	('0002','hansani','erandika','0760015681','2006.02.09','hu'),
	('0003','dewmi','nimesha','0760015682','2006.02.10','mgt'),
	('0004','sewmi','dinara','0760015683','2006.02.11','eng'),
	('0005','tenuri','dewmini','0760015684','2006.02.12','hu');
insert into Faculty(Faculty_Name,contact,place,Fee)
values
   
     ('hu','0771122335','kelaniya','1000000'),
     ('mgt','0771122337','godagama','20000'),
     ('eng','0771122336','homagama','50000'),
     ('art','0771122338','kelaniya','200000'),
     ('sc','07711223344','maharagama','5000000');

alter table faculty rename column faculty_name to faculty_id;
alter table faculty add column faculty_name varchar(200); 

update faculty set faculty_name='humainities' where faculty_id='hu';
update faculty set faculty_name='management' where faculty_id='mgt';
update faculty set faculty_name='engineering' where faculty_id='eng';
update faculty set faculty_name='art' where faculty_id='art';
update faculty set faculty_name='science' where faculty_id='sc';

alter table std_details rename column Faculty_NameFK to faculty_id;

select faculty.faculty_name,faculty.place,std_details.fname,std_details.tel from faculty inner join std_details on faculty.faculty_id=std_details.faculty_id;

select faculty.faculty_name,faculty.place,std_details.fname,std_details.tel from faculty inner join std_details on faculty.faculty_id=std_details.faculty_id where faculty.place='kelaniya';

select std_id,FName,LName,Tel from std_details;

select * from std_details where std_id='0001';

select FName,LName from std_details where std_id='0001' or std_id='0002';

select std_id from std_details where fname='oshani' or LName='oshani';

select faculty_name,place from faculty where fee='50000' or fee>'50000';

select faculty_name,place,fee from faculty where fee>='50000' and fee<='1000000';

select * from std_details limit 2;

select sum(fee) from faculty;
select min(fee) from faculty;
select max(fee) from faculty;
select avg(fee) from faculty;
select count(fee) from faculty;

select sum(fee) as total_of_fee from faculty;
select min(fee)as minimum_value from faculty;
select max(fee)as maximum_value from faculty;
select avg(fee)as avarage_of_value from faculty;
select count(fee)as count_of_fee from faculty;

select * from faculty order by fee asc;
select * from faculty order by fee desc;
select * from std_details order by std_id asc;
select * from std_details order by std_id desc;
select * from std_details order by fname asc;
select * from std_details order by fname desc;

update std_details set LName='sasena' where std_id='0005';

insert into std_details(std_id,FName,LName,Tel,DOB,Faculty_id)
values
('0009','abishek','gimhana','0776688994','2006-05-06','eng');

