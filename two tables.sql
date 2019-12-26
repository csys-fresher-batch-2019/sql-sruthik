drop table usertable1;
create table usertable1(
user_id number not null,
user_name varchar(50)not null,
user_mail varchar(50)not null,
user_password varchar(50)not null,
state varchar(20)
);
create sequence user_id_seq start with 1 increment by 1;
insert into usertable1(user_id,user_name,user_mail,user_password,state) values ('1','sruthi','s@gmail.com','12345','1');
insert into usertable1(user_id,user_name,user_mail,user_password,state) values ('2','swaathi','s1@gmail.com','12347','0');
insert into usertable1(user_id,user_name,user_mail,user_password,state) values ('3','anusha','a@gmail.com','18345','1');
select * from usertable1;



drop table todolist0;
create table todolist0(
task_no number not null,
task_name varchar2(50) not null,
deadline date,
completed_on date not null,
modified_on date not null,
task_priority number not null,
status varchar2(20),
FOREIGN KEY (task_no) References usertable1(user_id)
);
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (1,'Send request',to_date('23-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),to_date('24-12-2019','dd-MM-yyyy'),1,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (4,'receive request',to_date('24-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('23-12-2019','dd-MM-yyyy'),2,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (3,'confirm request',to_date('26-12-2019','dd-MM-yyyy'),to_date('23-12-2019','dd-MM-yyyy'),to_date('24-12-2019','dd-MM-yyyy'),3,'');

update todolist0 set status = 'pending' where deadline IS NULL or deadline < modified_on;
update todolist0 set status = 'completed' where deadline > modified_on;
select * from todolist0;
