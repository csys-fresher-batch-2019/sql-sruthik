create table todolist2(
task_no number,
task_name varchar(50),
deadline date,
completed_on date,
modified_on date,
task_priority number
);
insert into todolist2(task_no,task_name,deadline,completed_on,modified_on,task_priority) values (1,'Send request',to_date('23-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),1);
insert into todolist2(task_no,task_name,deadline,completed_on,modified_on,task_priority) values (2,'receive request',to_date('23-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),2);
insert into todolist2(task_no,task_name,deadline,completed_on,modified_on,task_priority) values (3,'confirm request',to_date('23-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),3);
insert into todolist2(task_no,task_name,deadline,completed_on,modified_on,task_priority) values (4,'Send mail',to_date('23-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),4);
insert into todolist2(task_no,task_name,deadline,completed_on,modified_on,task_priority) values (5,'Send request',to_date('23-12-2019','dd-MM-yyyy'),to_date('22-12-2019','dd-MM-yyyy'),to_date('21-12-2019','dd-MM-yyyy'),5);

select * from todolist2 order by task_priority;
select count(*) from todolist2;
