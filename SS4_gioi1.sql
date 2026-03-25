create database sesion4;

create table students(
    id serial primary key ,
    full_name varchar(50) ,
    gender varchar(10),
    birth_year int,
    major varchar(100),
    gpa decimal(10,2)
);

insert into students
values
    (default, 'Nguyễn Văn A','Nam',2002,'CNTT',3.6),
    (default, 'Trần Thị Bích Ngọc','Nữ',2001,'Kinh tế',3.2),
    (default, 'Lê Quốc Cường','Nam',2003,'CNTT',2.7),
    (default, 'Phạm Minh Anh','Nữ',2000,'Luật',3.9),
    (default, 'Nguyễn Văn A','Nam',2002,'CNTT',3.6),
    (default, 'Lưu Đức Tài','2004',2004,'Cơ khí',null),
    (default, 'Võ Thị Thu Hằng','Nữ',2001,'CNTT',3.0);


insert into students
values (default, 'Lê Quốc Cương','Nam',2003, 'CNTT',3.8);

select * from students;

delete from students where id =8;

update students set gpa = 3.4 where full_name = 'Lê Quốc Cường';

delete from students where gpa is null;

select students.full_name, students.gpa from students
where gpa >= 3 limit 3;

select distinct students.major from students;

select students.full_name, students.major, gpa from students
      where major = 'CNTT' order by gpa desc , full_name asc ;

select students.full_name from students where full_name like 'Nguyễn%';

select students.full_name, students.birth_year from students
where birth_year between 2001 and 2003;
