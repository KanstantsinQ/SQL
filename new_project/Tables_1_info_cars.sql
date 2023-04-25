--Создаем таблицу с номерами машин

create table number_plates(
			id serial primary key,
			plates varchar (50) unique not null);
				
insert into number_plates(plates)
values ('AA00001'),
	   ('AO00002'),
	   ('AB00003'),
	   ('AC00004'),
	   ('AA00005'),
	   ('AA00006'),
	   ('AC00007'),
	   ('AA00008'),
	   ('AB00009'),
	   ('AA00010'),
	   ('AC00011'),
	   ('AB00012'),
	   ('AA00013'),
	   ('AH00014'),
	   ('AK00015'),
	   ('AK00016'),
	   ('AP00017'),
	   ('AK00018'),
	   ('AP00019'),
	   ('AE00020'),
	   ('AK00021'),
	   ('AK00022'),
	   ('AE00023'),
	   ('AK00024'),
	   ('AP00025');

select * from number_plates;

--Создаем таблицу марок авто

create table car_brand(
	id serial primary key,
	brand varchar (50) not null unique); 


insert into car_brand(brand)
values ('volkswagen'),
	   ('kia'),
	   ('bmw'),
	   ('mercedes'),
	   ('audi'),
	   ('renault'),
	   ('ford');
	  
select * from car_brand;
	 

--Создаем таблицу классов автомобилей

create table class_cars(
	id serial primary key,
	classification varchar (50) not null unique);

insert into class_cars(classification)
values ('econom'),
	   ('comfort'),
       ('premium'),
       ('luxury');
      
UPDATE class_cars
SET classification = 'bussiness'  
WHERE id = 3      
       
select * from class_cars;

--Создаем таблицу с ценами

create table price_list(
	id serial primary key,
	price int not null); 

insert into price_list(price)
values (30),
	   (45),
	   (70),
	   (100);
	  
select * from price_list;

--Создаем таблицу с видом трансмиссии

create table car_transmission(
	id serial primary key,
	transmission varchar (50) not null unique); 

insert into car_transmission(transmission)
values ('automatic'),
	   ('manual');

select * from car_transmission;

--Создаем таблицу с видом топлива

create table type_fuel(
	id serial primary key,
	fuel varchar (50) not null unique); 


insert into type_fuel(fuel)
values ('diesel'),
	   ('petrol'),
	   ('hybrid');

select * from type_fuel;


--Создаем таблицу number_for_brand, в которой связываем номера машин и ее маркой

create table number_for_brand(
	id serial primary key,
	plates_id int not null unique,
	brand_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (brand_id)
		references car_brand(id)); 
	
insert into number_for_brand (plates_id, brand_id)
values (1,1),
       (2,1),
       (3,2),
       (4,1),
       (5,3),
       (6,4),
       (7,5),
       (8,6),
       (9,7),
       (10,7),
       (11,4),
       (12,3),
       (13,2),
       (14,6),
       (15,7),
       (16,2),
       (17,1),
       (18,2),
       (19,2),
       (20,3),
       (21,3),
       (22,4),
       (23,5),
       (24,7),
       (25,7);
      
select * from number_for_brand;    

--Создаем таблицу number_for_class, в которой связываем номера машин и ее класс

create table number_for_class(
	id serial primary key,
	plates_id int not null unique,
	classification_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (classification_id)
		references class_cars(id)); 
	
insert into number_for_class(plates_id, classification_id)
values (1,1),
       (2,1),
       (3,2),
       (4,2),
       (5,3),
       (6,4),
       (7,2),
       (8,2),
       (9,1),
       (10,4),
       (11,4),
       (12,3),
       (13,2),
       (14,1),
       (15,1),
       (16,2),
       (17,2),
       (18,2),
       (19,2),
       (20,3),
       (21,3),
       (22,4),
       (23,1),
       (24,1),
       (25,1);
      
--Создаем таблицу car_brand_transmission

create table car_brand_transmission(
	id serial primary key,
	plates_id int not null unique,
	transmission_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (transmission_id)
		references car_transmission(id)); 
	
	
insert into car_brand_transmission(plates_id, transmission_id)
values (1,1),
       (2,1),
       (3,2),
       (4,2),
       (5,2),
       (6,1),
       (7,1),
       (8,1),
       (9,1),
       (10,1),
       (11,1),
       (12,1),
       (13,1),
       (14,1),
       (15,1),
       (16,1),
       (17,1),
       (18,1),
       (19,1),
       (20,1),
       (21,1),
       (22,2),
       (23,2),
       (24,1),
       (25,1);

--Создаем таблицу car_brand_fuel
    
create table car_brand_fuel(
	id serial primary key,
	plates_id int not null unique,
	fuel_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (fuel_id)
		references type_fuel(id)); 
	
insert into car_brand_fuel(plates_id, fuel_id)
values (1,1),
       (2,1),
       (3,2),
       (4,2),
       (5,2),
       (6,3),
       (7,3),
       (8,3),
       (9,3),
       (10,1),
       (11,1),
       (12,3),
       (13,3),
       (14,3),
       (15,3),
       (16,3),
       (17,1),
       (18,1),
       (19,1),
       (20,1),
       (21,1),
       (22,2),
       (23,2),
       (24,3),
       (25,3);
      
--Создаем таблицу class_price

create table class_price(
	id serial primary key,
	classification_id int not null unique,
	price_id int not null,
	foreign key (classification_id)
		references class_cars(id),
	foreign key (price_id)
		references price_list(id)); 
	
insert into class_price(classification_id, price_id)
values (1,1),
       (2,2),
       (3,3),
       (4,4);
 