-- Таблица employees
-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
-- Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar (50) unique not null);

select * from employees;

insert into employees(employee_name)
values ('Ron'),
       ('Don'),
       ('Sam'),
       ('Sid'),
       ('Alex'),
       ('Poul'),
       ('Franc'),
       ('Ugo'),
       ('Bella'),
       ('Fin'),
       ('Swen'),
       ('Jamal'),
       ('Chu'),
       ('Wolt'),
       ('Samanta'),
       ('Candy'),
       ('Billy'),
       ('Pepe'),
       ('Arina'),
       ('Coco'),
       ('Litl'),
       ('Anna'),
       ('Inna'),
       ('Anton'),
       ('Norman'),
       ('Przemek'),
       ('Georg'),
       ('Mario'),
       ('Tamara'),
       ('Robin'),
       ('Mayli'),
       ('Pablo'),
       ('Piotr'),
       ('Lilu'),
       ('Endy'),
       ('Ted'),
       ('Sally'),
       ('Frodo'),
       ('Inga'),
       ('Fibi'),
       ('Artur'),
       ('Iva'),
       ('Eva'),
       ('Ice'),
       ('Chad'),
       ('Monika'),
       ('Luisa'),
       ('ElPepe'),
       ('Edd'),
       ('Simon'),
       ('Viki'),
       ('Ignat'),
       ('Kasper'),
       ('Ragnar'),
       ('Rolo'),
       ('Odin'),
       ('Zews'),
       ('Mars'),
       ('Katy'),
       ('Tod'),
       ('Tom'),
       ('Nina'),
       ('Sandy'),
       ('Bill'),
       ('Wern'),
       ('Magog'),
       ('Loyd'),
       ('Harry'),
       ('Alfonso'),
       ('Zuza');
      
-- Таблица salary
-- Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
-- Наполнить таблицу salary 15 строками:
      
create table salary_1(
	id serial primary key,
	mouthly_salary int not null
);      

select * from salary_1;

insert into salary_1(mouthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);
		
--Таблица employee_salary
-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
-- Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id	
	
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
); 
		
select * from employee_salary;
	
insert into employee_salary	(employee_id, salary_id)
values  (1,10),
		(2,22),
		(3,4),
		(4,6),
		(5,2),
		(6,12),
		(7,9),
		(8,5),
		(9,13),
		(10,14),
		(71,3),
		(72,7),
		(73,11),
		(74,15),
		(75,16),
		(76,23),
		(77,20),
		(78,19),
		(79,17),
		(80,27),
		(21,28),
		(22,55),
		(23,44),
		(24,33),
		(25,19),
		(26,29),
		(27,31),
		(28,34),
		(29,5),
		(30,54),
		(31,18),
		(32,2),
		(33,4),
		(34,66),
		(35,12),
		(36,13),
		(37,8),
		(38,9),
		(39,10),
		(40,25);

--Таблица roles
-- оздать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:

create table roles_1(
	id serial primary key,
	role_name int not null unique
); 
		
select * from roles_1;

-- Поменять тип столба role_name с int на varchar(30)
alter table roles_1 alter column role_name type varchar (30);
  
-- Наполнить таблицу roles 20 строками:
insert into roles_1	(role_name)
values 
		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
--Таблица roles_employee
-- Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
-- Наполнить таблицу roles_employee 40 строками:
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_1(id)
); 
	
select * from roles_employee;

-- Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values	
		(1,2),
		(2,3),
		(3,15),
		(4,20),
		(5,19),
		(6,18),
		(7,15),
		(8,1),
		(9,2),
		(10,11),
		(11,4),
		(12,12),
		(13,14),
		(14,5),
		(15,6),
		(16,8),
		(17,13),
		(18,18),
		(19,19),
		(20,10),
		(21,19),
		(22,7),
		(23,9),
		(24,16),
		(25,17),
		(26,18),
		(27,2),
		(28,6),
		(29,7),
		(30,5),
		(31,4),
		(32,3),
		(33,2),
		(34,11),
		(35,12),
		(36,20),
		(37,13),
		(38,5),
		(39,11),
		(40,1);


     