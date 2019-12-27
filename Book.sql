drop table books;
create table books(
book_id number not null,
book_title varchar(50) not null,
price number,
constraint price_cq check(price >= 0),
constraint book_id_pk primary key (book_id)
);
drop table book_stocks;
create table book_stocks(
stock_id number not null,
book_id number not null,
quantity number,
constraint stock_id_pk primary key(stock_id),
constraint quantity_cq check(quantity >= 1),
constraint book_id_fk foreign key(book_id) references books(book_id)
);

drop table order_items;
create table order_items(
order_itemid number not null,
order_id number not null,
book_id number not null,
quantity number,
status varchar(50),
constraint quantity_cq1 check(quantity >=1)
);

drop table orders;
create table orders(
order_id number not null,
user_name varchar(50)not null,
total_amount number,
ordered_date timestamp,
delivered_date timestamp,
status varchar(50)
);

insert into books(book_id,book_title,price)
values(101,'c',100);

insert into books(book_id,book_title,price)
values(102,'java',200);

insert into book_stocks(stock_id,book_id,quantity)
values(1,101,10);

insert into book_stocks(stock_id,book_id,quantity)
values(2,102,5);

insert into order_items(order_itemid,order_id,book_id,quantity,status)
values(1,1,101,3,'ordered');
insert into order_items(order_itemid,order_id,book_id,quantity,status)
values(2,2,101,5,'ordered');
insert into order_items(order_itemid,order_id,book_id,quantity,status)
values(3,2,102,3,'ordered');


insert into orders(order_id,user_name,total_amount,ordered_date,delivered_date,status)
values(1,'Sruthi','',sysdate,sysdate+1,'delivered');
insert into orders(order_id,user_name,total_amount,ordered_date,delivered_date,status)
values(1,'Swaathi','',sysdate,sysdate+1,'delivered');

select * from books;
select * from book_stocks;
select * from orders;
select * from order_items;

select quantity from book_stocks where book_id = 101;
select sum(quantity) from order_items where book_id = 101;


--display book name and no of quantities ordered
select book_title,(
(select sum(quantity) from order_items where book_id = b.book_id)
) from books b;

--display book name and stock
select book_title,(
(select quantity from book_stocks where book_id = b.book_id)
)from books b;

--calculate available stock for each book
select book_title,(
(select quantity from book_stocks where book_id = b.book_id)-
(select sum(quantity)from order_items where book_id = b.book_id)
)
from books b;








