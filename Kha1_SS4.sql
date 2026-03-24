create database Kha1SS4;

create table students(
    id serial primary key ,
    name    varchar(50),
    age int ,
    major varchar(50),
    gpa decimal(3,2)
);

insert into students
values (default,'An',20,'CNTT',3.5),
       (default,'Bình',21,'Toán',3.2),
       (default,'Cường',22,'CNTT',3.8),
       (default,'Dương',20,'Vật lý',3.0),
       (default,'Em',21,'CNTT',2.9);


delete from students;
select * from students;

insert into students values (default,'Hùng',23,'Hóa học',3.4);
update students
set gpa = 3.6
where name = 'Bình';

delete from students where gpa < 3;

select distinct name from students where major = 'CNTT';

select name from students where gpa between 3 and 3.6;

select name from students where name like 'C%'

select name from students order by name ASC limit 3;

select name from students limit 3 offset 1;
