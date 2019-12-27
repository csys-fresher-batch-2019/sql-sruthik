drop table books;
create table books(
book_id number not null,
book_title varchar2(50) not null,
price number not null,
constraint price_cq check(price >= 0),
constraint book_id_pk primary key (book_id)
);
drop table book_stocks;
create table book_stocks(
stock_id number not null,
book_id number not null,
quantity number not null,
UNIQUE(book_id),
constraint stock_id_pk primary key(stock_id),
constraint quantity_cq check(quantity >= 1),
constraint book_id_fk foreign key(book_id) references books(book_id)
);

drop table order_items;
create table order_items(
order_item_id number not null,
order_id number not null,
book_id number not null,
quantity number not null,
status varchar2(50)default 'ordered',
constraint quantity_cq1 check(quantity >=1),
constraint order_id_fk foreign key(order_id) references orders(order_id),
constraint book_id_fk1 foreign key(book_id) references book_stocks(book_id)
);

drop table orders;
create table orders(
order_id number not null,
user_name varchar2(50)not null,
total_amount number not null,
ordered_date timestamp not null,
delivered_date timestamp,
status varchar2(50) default 'delivered',
constraint total_amount_cq check (total_amount > 0),
constraint order_id_pk primary key(order_id)
);



insert into books(book_id,book_title,price)
values(101,'c',100);

insert into books(book_id,book_title,price)
values(102,'java',200);

insert into book_stocks(stock_id,book_id,quantity)
values(1,101,10);

insert into book_stocks(stock_id,book_id,quantity)
values(2,102,5);

insert into order_items(order_item_id,order_id,book_id,quantity,status)
values(1,1,101,3,'ordered');
insert into order_items(order_item_id,order_id,book_id,quantity,status)
values(2,2,101,5,'ordered');
insert into order_items(order_item_id,order_id,book_id,quantity,status)
values(3,2,102,3,'ordered');


insert into orders(order_id,user_name,total_amount,ordered_date,delivered_date,status)
values(1,'Sruthi','300',sysdate,sysdate+1,'delivered');
insert into orders(order_id,user_name,total_amount,ordered_date,delivered_date,status)
values(1,'Swaathi','400',sysdate,sysdate+1,'delivered');

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








