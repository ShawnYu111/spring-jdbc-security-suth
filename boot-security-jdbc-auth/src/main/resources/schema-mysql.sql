DROP TABLE IF EXISTS authorities;
DROP TABLE IF EXISTS users; 
DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
  empId VARCHAR(10) NOT NULL,
  empName VARCHAR(100) NOT NULL,
  phone_num VARCHAR(100) NOT NULL,
  SSN VARCHAR(10) NOT NULL,
  city VARCHAR(100) NOT NULL
);

insert into employee values ('10', 'john','1234567890','000111222','NYC');
insert into employee values ('20', 'tom','4145735239','011111332','Los Angeles');

 create table users (
 username varchar(50) not null primary key,
 password varchar(120) not null,
 enabled boolean not null
 );
 
  create table authorities (
 username varchar(50) not null,
 authority varchar(50) not null,
 foreign key (username) references users (username)
);

 insert into users(username, password,enabled) values('admin','admin001',true);
 insert into authorities(username,authority)values('admin','ROLE_ADMIN');

insert into users(username, password,enabled)values('employee','employee001',true);
insert into authorities(username,authority)values('employee','ROLE_USER');
insert into authorities(username,authority)values('admin','ROLE_USER');