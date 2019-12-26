create table todolist{
task_number number not null,
task_name varchar2(20) not null,
task_performer varchar2(20) not null,
created_date date not null,
modified_date date not null,
task_priority number,
task_deadline date not null,
task_status char(2);
constraint task_id_pk primary key(task_id);
constraint task_status_ck check(task_status in('completed','notcompleted');
constraint task_deadline_ck check(modified_date < task_deadline);   
constraint task_priority_uq unique(task_priority);                                
};
insert into todolist(task_number,task_name,task_performer,created_date,modified_date,task_priority,task_deadline,task_status) values(1,'Open chrome','Sruthi',to_date('15-12-2019','dd-mm-yyyy'),to_date('17-12-2019','dd-mm-yyyy'),to_date('18-12-2019','dd-mm-yyyy'),'completed');
insert into todolist(task_number,task_name,task_performer,created_date,modified_date,task_priority,task_deadline,task_status) values(2,'Open gmail','Sruthi',to_date('17-12-2019','dd-mm-yyyy'),to_date('19-12-2019','dd-mm-yyyy'),to_date('20-12-2019','dd-mm-yyyy'),'notcompleted');

select * from todolist where(task_status = 'completed');

