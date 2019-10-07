Use MyFirstDB;
select e.first_name,e.last_name,e.salary as "Highest Salary"
from Employee e
Where e.salary in (select max(salary) from Employee);

select Max(e.salary) as "Second Highest Salary"
from Employee e
where e.salary not in (select Max(salary) from Employee);