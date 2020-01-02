# Books Catalog Database
* http://bookscatalog.in


## Features
* User should be able to view all Publishers
* User should be able to view all Authors
* User should be able to view all Subjects
* User should be able to view all Titles
* To display number of books published in the current year
* To display publisher id and maximum price for the subject java
* To display Title id and maximum price
* To add a Publisher
* To add a Title
* To display title id and number of authors of the title
* To add mail id and phone number for a publisher
* To display publisher name and number of books published by a publisher
* To display authors who published more than 1 version
* To Change the published date for a Particular bookTo display publisher id ,year and number of books published
* To display title and price for most recent published book
* To display the title starting with character 'A’
* To display Subjectwise Titles
* To display the number of books published by each publisher id



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
values(1,'Jaico','jaico@gmail.com',7896376548);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(2,'Arihant','arihant@gmail.com',8976598765);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(3,'Penguin random','penguin@gmail.com',9087647655);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(4,'Microsoft','roli@gmail.com',8765876543);
insert into publishers(pub_id,pub_name,pub_mail_id,pub_ph_no)
values(5,'Rupa','rupa@gmail.com',7098723415);

```
Query:
```sql
select * from publishers;
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
values(1,'Arun shourie','arun@gmail.com',9043723456);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(2,'Vikram sethe','vikram@gmail.com',9876456473);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(3,'Abdul Fazel','abdul@gmail.com',8765445678);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(4,'Kautilya','kautilya@gmail.com',7654334567);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(5,'MK Gandhi','gandhi@gmail.com',9123443214);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(6,'Steve','steve@gmail.com',8123467890);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(7,'James gosling','gosling@gmail.com',9032456432);
insert into authors(author_id,author_name,author_mail_id,author_ph)
values(8,'Charles babbage','charles@gmail.com',7109823678);
```
Query:
```sql
select * from authors;
```

### Feature 3: List By Subjects
```sql
drop table subjects;
create table subjects(sub_id number,
sub_name varchar2(100) not null,
constraint sub_id_pk primary key(sub_id),
constraint sub_name_ck check(sub_name in('Tamil','English'))
);
insert into subjects(sub_id,sub_name)
values(1,'Tamil');
insert into subjects(sub_id,sub_name)
values(2,'English');
```
Query:
```sql
select * from subjects;
```

### Feature 4: List By Titles
```sql
create table titles(title_id number,
pub_id number,
author_id number,
sub_id number,
pub_date date,
title varchar2(255) not null,
version_number number,
price number not null,
constraint tt_price_ck check(price >= 0),
constraint tt_titles_uq unique(title_id,version_number),
constraint tt_title_id_pk primary key(title_id),
constraint tt_pub_id_fk foreign key(pub_id) references publishers(pub_id),
constraint tt_sub_id_fk foreign key(sub_id) references subjects(sub_id),
constraint tt_author_id_fk foreign key(author_id) references authors(author_id)
);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(1,1,1,1,'23-05-2014','A Secular Agenda',1,400);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(2,2,2,1,'02-06-2017','A Suitable boy',1,800);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(3,3,3,1,'15-10-2015','Akbarnama',1,900);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(4,3,4,2,'3-09-2017','An autobiography',1,600);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(5,4,5,2,'8-10-2019','C',1,400);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(6,4,6,2,'15-10-2016','C++',1,500);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(7,4,7,2,'7-03-2020','Java',1,800);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(8,4,5,2,'6-04-2018','PHP',2,700);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(9,3,4,2,'14-09-2020','An autobiography',2,900);
insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(10,4,7,2,'19-08-2020','Java',2,1000);
```
Query:
```sql
select * from titles;
```
### Feature 5:To display number of books published in the current year
```sql
select count(*) from titles where to_char(sysdate,'yyyy') = to_char(pub_date,'yyyy');
```
### Feature 6:To display publisher id and maximum price for the subject java
```sql
select pub_id, max(price)
from titles
where title = 'Java'
group by pub_id;
```

### Feature 7:To display Title id and maximum price 
```sql
select title, max(price)
from titles
group by title;
```

### Feature 8: To add a Publisher and title
```sql
insert into publishers(pub_id,pub_name)
values(6,'Suchitra');

insert into titles(title_id,pub_id,author_id,sub_id,pub_date,title,version_number,price)
values(11,1,1,1,'25-11-2020','A Secular Agenda',2,500);
```

### Feature 9: To display title id and number of authors of the title
```sql
select author_id, count(*)
from titles
group by author_id 
order by author_id asc;
```


### Feature 10: To add mail id and phone number for a publisher
```sql
update publishers set pub_mail_id = 'suchitra@gmail.com',pub_ph_no = '9765321632' where pub_id = 6;
```

### Feature 11: To display publisher name and number of books published by a publisher
```sql
select pub_name, count(*)
from   publishers p, titles t
where  p.pub_id = t.pub_id
group  by pub_name;
```

### Feature 12: To display authors who published more than 1 version
```sql
select t.author_id ,a.author_name 
from titles t,authors a 
where a.author_id = t.author_id and t.version_number = 2;
```

### Feature 13: To Change the published date for a Particular book
```sql
update titles 
set pub_date = '8-09-2020' 
where title = 'A Suitable boy';
```

### Feature 14: To display publisher id ,year and number of books published
```sql
select pub_id,to_char(pub_date,'yyyy'), count(*)
from titles
group by pub_id, to_char(pub_date,'yyyy')
order by pub_id asc;
```

### Feature 15: To display title and price for most recent published book
```sql
select title,price,pub_date 
from titles 
order by pub_date desc;
```

### Feature 16: To display the title starting with character 'A'
```sql
select title,price,version_number from titles where title like '%A%';
```

### Feature 17: To display Subjectwise Titles
```sql
select t.title,s.sub_name from titles t,subjects s where t.sub_id = s.sub_id;
```

### Feature 18: To display the number of books published by each publisher id
```sql
select count(title) from titles group by pub_id;
```


