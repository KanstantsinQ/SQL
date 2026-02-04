--Zadanie: Tabela employees (Pracownicy)
--1. Utworzyć tabelę employees:
--id: serial, primary key
--employee_name: varchar(50), not null
--2. Wypełnić tabelę employees 70 wierszami.

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
      
--Zadanie: Tabela salary (Wynagrodzenia)
--1. Utworzyć tabelę salary:
--id: serial, primary key
--monthly_salary: int, not null
--2. Wypełnić tabelę salary 15 wierszami.
      
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
		

--Zadanie: Tabela employee_salary (Wynagrodzenia pracowników)
--1. Utworzyć tabelę employee_salary:
--id: serial, primary key
--employee_id: int, not null, unique
--salary_id: int, not null
--2. Wypełnić tabelę employee_salary 40 wierszami:
--w 10 wierszach z 40 należy wstawić nieistniejące wartości employee_id.
	
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

--Zadanie: Tabela roles (Role)
--1. Utworzyć tabelę roles:
--id: serial, primary key
--role_name: int, not null, unique
--2. Zmienić typ kolumny role_name z int na varchar(30).
--3. Wypełnić tabelę roles 20 wierszami.

create table roles_1(
	id serial primary key,
	role_name int not null unique
); 
		
select * from roles_1;

alter table roles_1 alter column role_name type varchar (30);
  
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
	

--Zadanie: Tabela roles_employee (Role pracowników)
--1. Utworzyć tabelę roles_employee:
--id: serial, primary key
--employee_id: int, not null, unique (klucz obcy dla tabeli employees, pole id)
--role_id: int, not null (klucz obcy dla tabeli roles, pole id)
--2. Wypełnić tabelę roles_employee 40 wierszami.

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
