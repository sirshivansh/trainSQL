use db;

create table employee1
(
id int not null,
name varchar(20) not null,
age int
);

insert into employee1 values(1,"Ram",32);
insert into employee1 values(2,"Shivansh",21);
insert into employee1 values(3,"Dev",22);

alter table employee1
add primary key (id);

alter table employee1
add column email varchar(46) unique;

desc employee1;