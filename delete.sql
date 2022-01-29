delete from empl1
where id=1;  --1 row deleted

delete from empl1  --all rows deleted

--rollback possible, because log is formes first before deletion, hence slower
