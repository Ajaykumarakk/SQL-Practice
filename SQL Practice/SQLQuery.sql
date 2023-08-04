create table studs
(
Studsid int not null,
Firstname nvarchar (200) not null,
Lastname nvarchar (200) not null,
Email nvarchar (200) not null,
Phoneno int not null,
Address nvarchar (200) not null,
age int not null,
)

select * from studs

 

insert into studs values (1,'ajay','kumar','aj@',9087654,'palani',24),
(2,'sai','kumar','sa@',98786544,'odc',25),
(3,'mani','kandan','mi@',98767323,'mali',31),
(4,'hari','durkesh','hari@',98765432,'palani',23),
(5,'swa','thi','swa@',9876543,'pollachi',36)


select * from studends where age <30,

update studends set age = 23 where firstname = 'swa'

 select * from studends where age =(select avg(age)from studends)

 select * from studends order by firstname  desc

 select top 4 Firstname,age from studends 

 select studsid,avg(age) from studends group by studsid  having age >30

 select * into studscopy from studends 

 select * from studscopy

 select * into cpp from studends where age =24

 select * into news from studends where 1=2

 select * from n
 select top 0 * into n from studends

 delete from studends where phoneno = 9876543


 select top 1 * into c from studends 

 select * from c




 --------
 create table player
(
id int not null primary key identity (1,1), 
name nvarchar (200) not null,
age int  not null,
Db int null
)

select * from player

insert into player values ('ajay',24,05-12-1999),
('kumar',35,05-11-1989),
('harish',31,14-9-1991)

create table team
(
teamid int not null primary key identity (1,1), 
id int not null,
name nvarchar (200) not null,
)

select *from team

insert into team values (1,'rcb'),
(2,'mi'),
(3,'rcb')

create table salary
(
salaryid int not null primary key identity (1,1), 
id int not null,
salary int  not null,
)

insert into salary values (1,35000),
(2,40000),
(3,55000)

select *from salary


--joins-- 
select *from player
select *from team
select *from salary

select p.name,
p.age,
t.name,
s.salary
from player p  inner join team t on p.id = t.id   inner join salary s on p.id = s.id where  age >30


select p.name,
p.age,
t.name,
s.salary
from player p inner join team t on p.id = t.id  inner join salary s on p.id = s.id where t.name = 'rcb'



select * from player
select *from team

alter view commonview  
as
select name,age from player where age<30

select * from commonview

alter view resultview 
as
select p.name,p.age,t.teamid from player p ,team t where age >30

select* from resultview

--loop---

select * from studs

select studsid,Firstname,age,
case 
when age>30 then 'the age is under 30'
when age>35 then 'the age is under 35'
else 'the age is higher than 35'
end from studs