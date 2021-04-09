select user(), database();

show tables;

desc title;
desc department;
desc employee;

select tno, tname from title;
select deptNo, deptName, floor from department;

select tno, tname from title where tno = 3;

update title set tname='계약직' where tno = 6;

delete from title where tno = 6;
delete from department where deptno = 5;

insert into title values(6, '인턴');

select deptNo, deptName, floor from department;


select * from employee;

select empno, empname, title_no, title_name, manager_no, manager_name, salary, deptNo, deptName, floor
  from vw_full_employee;
 
select empno, empname, title as title_no, manager as manager_no, salary, dept as deptNo
  from employee;
 
 
insert into employee values(1004, '천사', 5, 4377, 2000000, 1);
update employee 
   set dept = 3
 where empno = 1004;
delete 
  from employee 
 where empno = 1004;
 
-- 부서가 1인 사원정보를 출력
select empno, empname, title, manager, salary, dept
  from employee 
 where dept = (select deptNo from department where deptNo = 3);

select * from employee;
select * from department;
select * from title;

create or replace view vw_full_employee_test
as
select e.empno
     , e.empname
     , t.titleNo as title_no
     , t.titleName as title_name
     , e.manager as manager_no
     , m.empname as manager_name
     , e.salary
     , d.deptNo
     , d.deptName
     , d.floor
     , e.hiredate 
  from employee e join title t on e.title = t.titleNo 
       left join employee m on e.manager = m.empno 
       join department d on e.dept = d.deptNo ;
  
      select * from vw_full_employee_test;
      select empno, empname, title_no, title_name, manager_no, manager_name, salary, deptNo, deptName, floor, hiredate from vw_full_employee_test;
      
    
    select empno, empname, title as title_no, manager as manager_no, salary, dept as deptNo, hiredate from employee where empno = "1003";
       	select empno, empname, title_no, title_name, manager_no, manager_name, salary, deptNo, deptName, floor, hiredate from vw_full_employee_test;
       
       


titleNo, titleName from title

update title set titleName = '사원' where titleNo = 5;

select
	deptNo,
	deptName,
	floor
from
	department;
     