/*Here A table is being produced from an already existing table.
    To get an idea of existing table refer 'create table and desc.sql'
    and 'alter.sql' */
alter table empl1 rename to emp;
desc emp;
Alter table emp add dept varchar(10);
desc emp;
alter table emp rename column roll_no to E_id;
desc emp
alter table emp rename column name to e_name;
desc emp
alter table emp modify e_id int;
desc emp
insert into emp values(1,'Ram',1000,'HR');
select * from emp;
insert into emp values(2,'Amrit',2000,'MRKT');
insert into emp values(3,'Ravi',3000,'HR');
insert into emp values(4,'Nitin',4000,'MRKT');
insert into emp values(5,'Varun',5000,'IT');
select * from emp;
--Now our emp table is ready 
/*Let's implement these queries
    1.display maximum salary
    2.display employee name who is taking maximum salary*/

    --solution1
    select max(salary) from emp;

    --solution 2
    select e_name from emp where salary=(select max(salary) from emp);
        --above query is an example of nested query or subquery
/*
3. display second highest salary
4.display employee name who is taking second maximum salary*/
--solution 3
select max(salary) from emp where salary <> (select max(salary) from emp);
--solution 4
select e_name from emp where salary=(select max(salary) from emp where salary <> (select max(salary) from emp));

/* 5. display all dept names along with no of employees working in that dept.
Solution:
            Above query can be implemented using group by clause.*/
            select dept from emp group by dept; --this will display dinstint departments in table
            --but we are required to display no of employees in each dept too so we need to use aggregate functions.
            --without using aggregate function,only that attribute can be displayed on which group by is applied..
            select dept, count(dept) from emp group by dept; 

/*6.display all dept names where employees are less than 2
Solution:
Note: Group by and where can't be used together
*/
select dept from emp group by dept having count(dept)<2;

/*7. Display names of employee working in dept having employees less than 2
Solution:
*/
select ename from emp where dept in (select dept from emp group by dept having count(*)<2); 

/*8.display name of employee with highest  salary department wise(highest in each department)  who is taking that salary
Solution:
*/
select e_name from emp where salary in (select max(salary) from emp group by dept);

/* IN AND NOT IN

9. Detail of employee whose address is either Delhi or Chandigarh or Pune 
Solution: */
select * from emp where address in ('Delhi','Chandigarh','Pune');

--LECTURE NO 61 Gate Smashers
--10
--find name of employees who are working on a project?
select e_name from emp where eid in (select distinct(eid)from project);

/* Exists/not exists lec no 62
Used in Corelated Nested Query
11.detail of employee who is working on at least one project
Solution:*/
select * from emp where eid exists(select eid from project where emp.eid=project.eid);
select * from employee where eid not exists where eid not exists(select eid from project where emp.eid=project.eid);



