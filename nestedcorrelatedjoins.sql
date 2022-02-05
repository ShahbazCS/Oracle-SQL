/* details of all emp who work in any dept

Nested query(Bottom up) Lesser no of comparisons
Solution:*/
select * from emp where e_id in (select e_id from dept);

--Correlated(top down)
select * from emp where exists(select e_id from dept where emp.e_id=dept.e_id);


--Joins(Cross product +conditions)
select * from emp,dept where emp.e_id=dept.e_id;