select * from employees 
where employees.title 
like '%Vice%' 
or employees.title like '%President%'
or employees.title like '%Manager%';