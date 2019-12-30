# Books Catalog Database
* http://bookscatalog.in


## Features
* User should be able to view all book titles


### Feature 1: List all Titles
'''sql
create table titles(title_id number not null,
title varchar2(255) not null,
price number not null,
constraint price_ck check(price >= 0),
constraint title_id_pk primary key(title_id)
);
'''
Query:
select * from titles;
