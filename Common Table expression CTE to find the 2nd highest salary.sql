use MyFirstDB;
/* Example 1 of Using Common Table Expression (CTE) of 'RESULT'  
	*/

select * from Employee order by salary desc;

With RESULT AS
(
	Select salary, DENSE_RANK() over (order by salary desc) as DENSERANK
	from Employee
)

Select TOP 1 salary
From RESULT
where RESULT.DENSERANK = 2;

Select salary, DENSE_RANK() over (order by salary desc) as DENSERANK
from Employee;

