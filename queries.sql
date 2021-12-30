-- Question 1
select count(*) as 'Employee Count', t.title as 'Title'
from employees e 
inner join titles t on t.emp_no =e.emp_no 
where e.birth_date > '1965-01-01'
group by t.title;

-- Question 2
select t.title as "Title", concat('$', format(avg(s.salary), 2)) as "Average Salary" from titles t
inner join employees e on e.emp_no = t.emp_no
inner join salaries s on s.emp_no =e.emp_no 
group by t.title;

-- Question 3
select sum(s.salary) as 'Total Salaries'
from salaries s
inner join dept_emp de on de.emp_no = s.emp_no 
inner join departments d on d.dept_no = de.dept_no 
where d.dept_name = 'Marketing'
	and year(s.from_date)>= 1990 and year(s.to_date) <= 1992