create table employees
(
empid int not null,
name nvarchar (200) not null,
age int not null
)


select * from employees

create procedure inserts(@empid int , @name nvarchar (200) null,@age int null)
as 
begin
insert into employees (empid,name,age) values (@empid,@name,@age)
end
exec inserts @empid,@name,@age

create procedure updates(@empid int , @name nvarchar (200) null,@age int null)
as 
begin
update employees set name=@name,age=@age 
where empid=@empid

end

exec updates 2,'navee',23

create procedure selects
as
begin
select * from employees 
end 
exec selects

create procedure deletes(@empid int)
as
begin
delete from employees where @empid=empid
end
exec deletes 1