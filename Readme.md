# Books Catalog Database
* http://bookscatalog.in


## Features
* User should be able to view all book titles


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
values(3,'java',300);

```
Query:
```sql
select * from titles;
```
