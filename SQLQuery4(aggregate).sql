SELECT Salary_id,E_id, M_id, salaries from dbo.de_learn2_salaries 
where salaries> (SELECT AVG(salaries) From dbo.de_learn2_salaries);
select * from Average_salary