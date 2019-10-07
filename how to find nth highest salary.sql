select * from Employee order by salary desc;


select TOP 1 salary as "2nd Largest Salary" 
From 
(select DISTINCT TOP 2 salary
From Employee
Order By salary desc)
Result
Order By Salary 



