create table todolist{
task_number number,
task_name varchar2(20),
task_performer varchar2(20),
task_deadline date,
task_status char(20);
constraint task_id_pk primary key(task_id);
};
insert into todolist(task_number,task_name,task_performer,task_deadline,task_status) values(1,'Open chrome','Sruthi',to_date('18-12-2019','dd-mm-yyyy'),'completed');
insert into todolist(task_number,task_name,task_performer,task_deadline,task_status) values(2,'Open gmail','Sruthi',to_date('19-12-2019','dd-mm-yyyy'),'notcompleted');

select * from todolist where(task_status = 'completed');
