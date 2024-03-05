With AvgSalary as (
select AVG(salaries) as avg_salary
from dbo.de_learn2_salaries)

select salary_id,M_id,E_id, salaries, AvgSalary.avg_salary as Average_salary
from dbo.de_learn2_salaries cross join AvgSalary
where salaries > AvgSalary.avg_salary

