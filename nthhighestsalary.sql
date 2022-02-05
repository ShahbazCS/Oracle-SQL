/*1.find nth highest salary using sql
Solution:*/
select e_id,salary from emp e1 where 2=(select count(distinct salary) from emp e2 where e2.salary>e1.salary);
