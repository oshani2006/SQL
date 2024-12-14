create table employee(
employee_id varchar(200) not null,
name varchar(200) not null,
salary float not null,
project_id varchar(200) not null,
project_cit varchar(200),
primary key(employee_id));

alter table employee add column city varchar(200);

alter table employee rename column project_cit to project_city;

select name from employee;
select * from employee;
select name,employee_id,salary from employee;
select name,employee_id from employee 

update employee set project_id='p0001' where project_id='p0004' or project_id='p0005' or project_id='p0006';

select distinct project_city from employee;

select employee_id,salary,city,name from employee order by salary desc;

update employee set project_id='p0002' where project_id='p0007' or project_id='p0008';

update employee set project_id='p0001' where project_id='p0009';

select employee_id,name from employee where city like "%da";

select max(salary),min(salary),avg(salary) from employee where project_id='p0001';

select * from employee order by salary desc limit 5;

update employee set salary=(salary+salary*1.2);

alter table employee add column gender varchar(20);

update employee set gender='female' limit 6;

update employee set gender='male' where gender is Null


select * from employee where gender is Null

select max(salary),min(salary),avg(salary),gender from employee group by gender;