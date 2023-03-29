select * from employees;
select * from salary_1;
select * from employee_salary;
select * from roles_1;
select * from roles_employee;

-- 1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary_1.mouthly_salary
from employee_salary 
inner join salary_1 on employee_salary.salary_id  = salary_1.id
inner join employees on employees.id = employee_salary.employee_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select  employees.employee_name, salary_1.mouthly_salary
from employees
inner join employee_salary on employee_salary.employee_id = employees.id
inner join  salary_1 on salary_1.id = employee_salary.salary_id 
where mouthly_salary < '2000';

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен.(ЗП есть, но не понятно кто её получает.)
select  employees.employee_name, salary_1.mouthly_salary
from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join  salary_1 on salary_1.id = employee_salary.salary_id 
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен.(ЗП есть, но не понятно кто её получает.)
select  employees.employee_name, mouthly_salary
from employees 
right join employee_salary on employee_salary.employee_id = employees.id
right join  salary_1 on salary_1.id = employee_salary.salary_id 
where employee_id is null and mouthly_salary < '2000'; 

-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary_1.mouthly_salary
from employees
left join employee_salary on employees.id = employee_salary.employee_id 
left join salary_1 on salary_1.id= employee_salary.salary_id
where mouthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles_1.role_name 
from employees 
inner join roles_employee on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles_1.role_name 
from employees inner join roles_employee
on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id  
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles_1.role_name
from employees inner join roles_employee
on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id  
where role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles_1.role_name
from employees inner join roles_employee on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id  
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles_1.role_name
from employees 
inner join roles_employee on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id  
where role_name like  '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles_1.role_name
from employees 
inner join roles_employee on roles_employee.employee_id = employees.id  
inner join roles_1 on roles_1.id = roles_employee.role_id  
where role_name like  '%Automation QA engineer%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалисто
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков
select roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Python%';



-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like  '%Middle JavaScript%';

--или

select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like  '%Senior Java developer%'

--или

select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id 
where role_name like '%Senior Java developer%'

-- 20. Вывести зарплаты Junior QA инженеров
select roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id
where role_name like '%Junior _% QA%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select  round(AVG(mouthly_salary), 2) as "Средняя палучка", roles_1.role_name
from employee_salary
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%Junior%'
group by 2;

select  round(AVG(mouthly_salary), 2) as "Средняя палучка"
from employee_salary
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id
where role_name like '%JavaScript%';

--у нас только один JS разраб

select  sum(mouthly_salary) as "сумма зарплат"
from employee_salary
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select  min(mouthly_salary) as "Минималка"
from employee_salary
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%QA engineer%';

--дополнительная проверка запросу 23 и 24

select roles_1.role_name, salary_1.mouthly_salary
from employees 
left join roles_employee on employees.id = roles_employee.employee_id 
left join roles_1 on roles_1.id = roles_employee.role_id
left join employee_salary on employees.id = employee_salary.employee_id
left join salary_1 on employee_salary.salary_id = salary_1.id
where role_name like '%QA engineer%';

-- 24. Вывести максимальную ЗП QA инженеров
select  max(mouthly_salary) as "Максималочка"
from employee_salary
join salary_1 on employee_salary.salary_id = salary_1.id 
join roles_employee on employee_salary.employee_id = roles_employee.employee_id 
join roles_1 on roles_employee.role_id = roles_1.id
where role_name like '%QA engineer%';

-- 25. Вывести количество QA инженеров
select count(roles_1.role_name) as "Количество QA engineer"
from roles_employee inner join roles_1 ON roles_employee.role_id = roles_1.id 
where role_name like '%QA engineer%'

-- 26. Вывести количество Middle специалистов.
select count(roles_1.role_name) as "Количество Middle"
from roles_employee inner join roles_1 ON roles_employee.role_id = roles_1.id 
where role_name like '%Middle%'

-- 27. Вывести количество разработчиков
select count(roles_1.role_name) as "Количество developer"
from roles_employee inner join roles_1 on roles_employee.role_id = roles_1.id 
where role_name like '%developer%'

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary_1.mouthly_salary) as "ФОНД"
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id
where role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id
order by 3 asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id
where mouthly_salary between 1700 and 2300
order by 3 asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id
where mouthly_salary < '2300'
order by 3 asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name, roles_1.role_name, salary_1.mouthly_salary
from employees 
inner join roles_employee on employees.id = roles_employee.employee_id 
inner join roles_1 on roles_1.id = roles_employee.role_id
inner join employee_salary on employees.id = employee_salary.employee_id
inner join salary_1 on employee_salary.salary_id = salary_1.id
where mouthly_salary in (1100,1500,2000)
order by 3 asc;
select * from roles_salary;
