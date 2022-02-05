/*Lec 64 Gate Smashers
1. Find all employees details who work in a department
Solution:*/
select * from emp where exists(select * from dept where dept.e_id=emp.e_id);
