
use db;
create table student
(
id int primary key,
Name varchar(34) not null,
Age int,
Email varchar(56) unique
);

insert into student(id, name, age, email) values
(1, "Shivansh", 21, "shivansh.mishra24@comp.sce.edu.in"),
(2, "Virat", 34, "vkohli18@gmail.com"),
(3, "Mahendra", 40, "msd07@gmail.com")
;

insert into student(id, name, age, email) values
(5, "Avyan", 28, null);

-- insert accepts NULL, but it does not allow duplicate values (we cant use msd07@gmail.com)

/*
insert into student(id, name, age, email) values
(5, "Rajan", 23, "rj@gmail.com");
ERROR: Duplicate entry '5' for key 'student.PRIMARY'
*/

/*
insert into student(id, name, age, email) values
(null, "rajan", 23, "rj@gmail.com");
ERROR: Column 'id' cannot be null
*/

alter table student add column city varchar(34) default 'Navi Mumbai';

-- select * from student;

alter table student modify column age int check(age >= 18);

insert into student(id, name, age, email) values
(6, "Kartikey", 18, "ktkt@gmail.com"),
(7, "Utkrishtha", 22, "utkmau@gmail.com");

select * from student;