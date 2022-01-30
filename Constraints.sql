--1.Unique:It ensures that an attribute can't caontain duplicate values
--2.Not Null: Particular attribute can't be left without value
/*3.Primary Key: It is both unique as well as not null 
4.Check: Checks and ensures that input in specific attribute is
           within  the domain conditions or constraints  specified in
           check
        Example-  check(age>10) will ensure that age attribute can
                    values more than 10 only.
5. Foreign Key: When primary key of one table is used as a refrence 
                in another table

               A. Including a foreign key while creating the table */
               create table course(
                   cid varchar2(10),
                   cname varchar2(20),
                   eid int refrences empl1(roll_no) 
               )
            --B.Including a foreign key in already created table
            alter table course add constraint fk
            foreign key(eid) refrences empl1(roll_no)

  /*6.Default: It provides default inputs for an attribute if no
                data is given for that particular attribute

                Example:
                    salary int dafault 10000      
