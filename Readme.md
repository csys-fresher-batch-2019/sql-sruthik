# Books Catalog Database
* http://bookscatalog.in


## Features
* User should be able to view all book titles
* User should be able to view all publishers


### Feature 1: List all Titles
```sql
create table titles(title_id number,
title varchar2(255) not null,
price number not null,
constraint price_ck check(price >= 0),
constraint title_id_pk primary key(title_id)
);
insert into titles(title_id,title,price)
values(1,'c',100);
insert into titles(title_id,title,price)
values(2,'c++',200);
insert into titles(title_id,title,price)
values(3,'java',300)

```
### Feature 2: List all Publishers
```sql
create table publishers(
pub_id number,
pub_name varchar2(50)not null,
pub_mail_id varchar2(70),
pub_ph_no number,
constraint publishers_pk primary key(pub_id),
constraint publishers_mail_uk unique(pub_mail_id)
);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(1,'Microsoft','m@gmail.com',9876533234);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(2,'ARS','m@gmail.com',8765434567);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(3,'Suchitra','s@gmail.com',7890613245);

```
Query:
```sql
select * from titles;
select * from publishers;
```
