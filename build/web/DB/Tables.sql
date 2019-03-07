create user cloud identified by cloud;
grant create session to cloud;
grant DBA to cloud;
alter user cloud quota unlimited on system;
connect cloud/cloud;

drop table cloud;
create table cloud(
username varchar2(30),
password varchar2(30)
);

drop table owners;
create table owners(
oid number(3),
username varchar2(40),
password varchar2(40),
email varchar2(40),
phone varchar2(40),
address varchar2(40),
income varchar2(30),
regnumber varchar2(30),
pan varchar2(30),
typeofproducts varchar2(30),
status varchar2(2) default 'n'
);


drop table customers;
create table customers(
custid number(3),
username varchar2(40),
password varchar2(40),
email varchar2(40),
phone varchar2(40),
address varchar2(40)
);

drop table products;
create table products(
oid  number(3),
pid number(3),
name varchar2(30),
company varchar2(30),
prodtype varchar2(30),
photo blob,
filelocation varchar2(40),
key varchar2(50)
);



drop table reqitems;
create table reqitems(
cid number(3),
oid number(3),
pid number(3),
comments varchar2(30),
filelocation varchar2(40),
key varchar2(40),
status varchar2(30) default 'no'
);

insert into cloud(username,password) values('sandeep','sandeep');

commit;
