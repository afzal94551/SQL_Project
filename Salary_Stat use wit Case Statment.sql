
Select  Job_Department, Home_Department,  Max(Salary)as Max_Salary, Min(Salary) as Min_Salary , Avg(Salary) as Avg_Salary,
Sum(Salary) as Sum_Salary, 
Case when Max(Salary) < 100000 then 'Low Pay Department' 
	When Max(Salary ) < 200000 then 'Mid Pay Department'
	when max(Salary) < 500000 then 'High Pay Department'
	else 'Very High Pay Department' 
	end as Department_Pay_Category
from Head_Count
Group by Job_Department,Home_Department
order by Job_Department
