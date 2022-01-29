Alter table emp add address varchar(10);
desc emp;

alter table emp drop column address;
desc emp;

alter table emp modify id varchar(10);
desc emp;

alter table emp rename column id to roll_no;
desc emp;

alter table emp rename to empl1;
desc emp;    --object to be described could not be found. That means it is renamed

alter table empl1 add primary key (roll_no); -- constrait added
desc empl1;