/*1. Max 
Print the maximum/min salary */
select min(salary) from emp;
select max(salary) from emp;

select count(*) from emp; --total no of rows in table
select count(salary) from emp; --does not count the null field. so result is 1 less than above query
select distinct(count(salary)) from emp; --doesn't count same salaries columns
select sum(salary) from emp;
select distinct(sum(salary)) from emp; --calculates sum of distinct salaries
select avg(salary) from emp; --average salary=sum/count
select distinct(avg(salary)) from emp; -- distinct(avg(salary))=distinct(sum)/distinct(count)