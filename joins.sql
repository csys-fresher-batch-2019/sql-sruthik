drop table books;
create table books(
book_id number not null,
book_title varchar2(50) not null,
price number not null,
constraint price_cq check(price >= 0),
constraint book_id_pk primary key (book_id)
);

drop table orders;
create table orders(
book_id number not null,
order_id number not null,
user_name varchar2(50)not null,
quantity number not null,
total_amount number not null,
ordered_date timestamp not null,
delivered_date timestamp,
status varchar2(50) default 'delivered',
constraint total_amount_cq check (total_amount > 0),
constraint book_id_fk foreign key(book_id) references books(book_id)
);

insert into books(book_id,book_title,price)
values(1,'C',100);
insert into books(book_id,book_title,price)
values(2,'C++',200);
insert into books(book_id,book_title,price)
values(3,'java',300);
insert into books(book_id,book_title,price)
values(4,'Python',400);
insert into books(book_id,book_title,price)
values(5,'Sql',250);

insert into orders(book_id,order_id,user_name,quantity,total_amount,ordered_date,delivered_date,status)
values(1,1,'user 1',2,200,sysdate,sysdate+2,'delivered');
insert into orders(book_id,order_id,user_name,quantity,total_amount,ordered_date,delivered_date,status)
values(2,2,'user 2',3,400,sysdate,sysdate+2,'delivered');
insert into orders(book_id,order_id,user_name,quantity,total_amount,ordered_date,delivered_date,status)
values(3,3,'user 3',1,300,sysdate,sysdate+2,'delivered');
insert into orders(book_id,order_id,user_name,quantity,total_amount,ordered_date,delivered_date,status)
values(1,4,'user 4',1,100,sysdate,sysdate,'delivered');
insert into orders(book_id,order_id,user_name,quantity,total_amount,ordered_date,delivered_date,status)
values(3,5,'user 5',1,300,sysdate,sysdate,'delivered');

select * from books left outer join orders on books.book_id = orders.book_id;

select * from books right outer join orders on books.book_id = orders.book_id;

select * from books inner join orders on books.book_id = orders.book_id;

select * from books full outer join orders on books.book_id = orders.book_id;

select books.book_title,orders.user_name from books full outer join orders on books.book_id = orders.book_id;

select o.book_id,o.order_id,o1.user_name as order_id from orders o,orders o1 where o.book_id = o1.order_id;
