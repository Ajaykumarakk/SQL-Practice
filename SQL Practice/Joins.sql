--ddl--

create table Employees
(
empid int  not null,
Name nvarchar (200) not null,
salary int not null,
Email nvarchar (200) null,
Place nvarchar (200) not null
);

select * from Employees

alter table Employees 
add phoneno int not null default (0) 

alter table Employees 
drop column place

alter table Employees 
alter column salary int not null

drop table Employees

truncate table Employees 

--dml--

insert into Employees values (1,'ajay',350000,'as@',765432),
(2,'sibi',54000,'si@',675432),
(3,'giri',20000,'gi@',43567)

select * from Employees

update Employees set salary = 100000  where name = 'ciri'

delete from Employees where name ='ajayk'

--logical--
select * from Employees where 
name = 'sibi' and email = 'gi'

select * from Employees where 
name = 'sibi' or email = 'gi@'

select * from Employees where salary in (20000)

select * from Employees where salary not in (20000)


select * from Employees where salary !=200000 or salary !=540

select * from Employees where salary  between  10000 and 45000

select * from Employees where name like '%r%'

select * from Employees where name like 'g_r%'

select * from Employees where name like '%r_'


--avg-sum-max-min--

select * from Employees

select *  from Employees where salary = (select min(salary) from Employees)

select max(name) as max from Employees


select avg(salary) as avg from Employees

select sum(empid) as sum from employees 

select count(empid) as count from employees 
--pk--

create table Employees
(
empid int  not null primary key identity(1,1),
Name nvarchar (200) not null,
salary int not null,
Email nvarchar (200) null,
phone int null
)

select * from Employees

drop table Employees

insert into Employees values ('ajay',350000,'as@',765432),
('sibi',54000,'si@',675432),
('giri',20000,'gi@',43567),
('sai',15000,'sai@',214365)


create table sales
(
salesid int  not null primary key identity(1,1),
products nvarchar (200) not null,
empid int not null,
address nvarchar (200) null,
salesno int  not null
)

select * from sales

insert into sales values ('Milk',1,'palani',0001),
('Powder',1,'pollachi',0002),
('Sweets',3,'Erode',0003),
('Fruits',4,'Gobi',0004)


select * from Employees
select * from sales


--joins--
--inner joins--
select 
e.name,
e.salary,
e.phone,
s.products,
s.address,
s.salesno
from Employees e inner join sales s on e.empid =s.empid 

select 
e.name,
e.salary,
e.phone,
s.products,
s.address,
s.salesno
from Employees e left join sales s on e.empid =s.empid 

select 
e.name,
e.salary,
e.phone,
s.products,
s.address,
s.salesno
from Employees e Right join sales s on e.empid =s.empid 

select 
e.name,
e.salary,
e.phone,
s.products,
s.address,
s.salesno
from Employees e full outer join sales s on e.empid =s.empid 




