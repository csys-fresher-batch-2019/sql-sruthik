drop table todolist0;
create table todolist0(
task_no number not null,
task_name varchar2(50) not null,
deadline date,
completed_on date not null,
modified_on date not null,
task_priority number not null,
status varchar2(20)
);
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (1,'Send request',to_date('23-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),to_date('24-12-2019','dd-MM-yyyy'),1,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (1,'receive request',to_date('24-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('23-12-2019','dd-MM-yyyy'),2,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (2,'confirm request',to_date('26-12-2019','dd-MM-yyyy'),to_date('23-12-2019','dd-MM-yyyy'),to_date('24-12-2019','dd-MM-yyyy'),3,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (2,'Send mail',to_date('','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),4,'');
insert into todolist0(task_no,task_name,deadline,completed_on,modified_on,task_priority,status) values (3,'Send request',to_date('22-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('23-12-2019','dd-MM-yyyy'),5,'');
update todolist0 set status = 'pending' where deadline IS NULL or deadline < modified_on;
update todolist0 set status = 'completed' where deadline > modified_on;
select * from todolist0 where status = 'pending';
select * from todolist0 where status = 'completed';
select count(task_no) from todolist0 Group by status;
