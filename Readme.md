# Books Catalog Database
* http://bookscatalog.in


## Features
* User should be able to view all Publishers
* User should be able to view all Authors
* User should be able to view all Subjects
* User should be able to view all Titles

### Feature 1: List all Publishers
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
### Feature 2: List all Authors
```sql
create table authors(
author_id number,
author_name varchar2(100) not null,
author_mail_id varchar2(100),
author_ph number,
constraint author_id_pk primary key(author_id),
constraint author_mail_id_uq unique(author_mail_id)
);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(1,'Steve','s@gmail.com',9043723456);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(2,'charles babbage','c@gmail.com',9043723456);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(3,'James gosling','j@gmail.com',9043723456);

```
### Feature 3: List By Prefered Language
```sql
drop table languages;
create table languages(
prefered_language varchar(100) not null,
constraint preferedd_language_ck check(prefered_language in('Tamil','English'))
);
insert into languages (prefered_language)
values('Tamil');
insert into languages (prefered_language)
values('English');
```
### Feature 4: List By Titles
```sql
drop table titles;
create table titles(title_id number,
pub_id number,
pub_date date,
title varchar2(255) not null,
price number not null,
constraint price_ck check(price >= 0),
constraint title_id_pk primary key(title_id),
constraint pub_id_fk foreign key(pub_id) references publishers(pub_id)
);
insert into titles(title_id,pub_id,pub_date,title,price)
values(1,1,sysdate-10,'c',100);
insert into titles(title_id,pub_id,pub_date,title,price)
values(2,2,sysdate-60,'c++',200);
insert into titles(title_id,pub_id,pub_date,title,price)
values(3,3,sysdate-78,'Java',300);

Query:
```sql
select * from publishers;
select * from authors;
select * from prefered_language;
select * from titles;
```
