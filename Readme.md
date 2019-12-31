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

Query:
```sql
select * from publishers;
```
