--Создаем таблицу с данными страховки и ТО для каждого авто

create table documents(
			id serial primary key,
			tech_inspection date,
			number_insurance varchar (50) not null unique);
			
insert into documents(tech_inspection, number_insurance)
values		('2024-01-11','ZQWER000020101'),
			('2024-12-12','ZQWER000020102'),
			('2025-11-03','ZQWER000020103'),	
			('2024-09-02','ZQWER000020104'),
			('2025-08-06','ZQWER000020105'),
			('2024-02-04','ZQWER000020106'),
			('2024-02-26','ZQWER000020107'),
			('2024-03-30','ZQWER000020108'),
			('2026-05-30','ZQWER000020109'),
			('2024-06-29','ZQWER000020110'),
			('2026-04-22','ZQWER000020111'),
			('2024-02-14','ZQWER000020112'),
			('2025-08-13','ZQWER000020113'),
			('2024-10-19','ZQWER000020114'),
			('2024-10-11','ZQWER000020115'),
			('2024-11-01','ZQWER000020116'),
			('2025-02-09','ZQWER000020117'),
			('2026-01-13','ZQWER000020118'),
			('2026-01-04','ZQWER000020119'),
			('2024-03-27','ZQWER000020120'),
			('2025-03-26','ZQWER000020121'),
			('2025-05-18','ZQWER000020122'),
			('2025-06-11','ZQWER000020123'),
			('2026-06-12','ZQWER000020124'),
			('2024-07-26','ZQWER000020125');
		
select * FROM documents


--Создаем таблицу с вин номерами машин

create table VIN_number(
			id serial primary key,
			VIN varchar (50) unique not null
			);
		
insert into VIN_number(VIN)
values ('WDDVP9AB1HJ015074'),
	   ('WDDVP9AB1HJ014927'),
	   ('WDDVP9AB1HJ016693'),
	   ('3C3CFFGEAN9DLLJKH'),
	   ('WP1ZZZ9YZMDA62754'),
	   ('WBAJA5C36HG894798'),
	   ('X9FKXXEEBKEY60871'),
	   ('XTARS0Y5LE0782107'),
	   ('X7L5SRLT661946363'),
	   ('Z783009D3F0021826'),
	   ('JMZBK14Z281640074'),
	   ('X4XPC784XAWA48244'),
	   ('XW7BF4FK30S022546'),
	   ('1C3ACB6K27N643662'),
	   ('JC1NFAEK6K0143006'),
	   ('WDC1668561A814066'),
	   ('X9FDXXEEBDBM42823'),
	   ('XW8AG1NH6HK100287'),
	   ('XTT374195M1205796'),
	   ('XZGEE04A3MA806586'),
	   ('TMBLB25L7C6071882'),
	   ('YS2G8X40005562036'),
	   ('XWEHM512AG0008435'),
	   ('JF1SHJLS5CG306686'),
	   ('XTAGAB120N1466931');
	  
	  select *from vin_number;
	   
	   


--Создаем таблицу plates_documents в которой связываем id из таблицы с номерами с id из таблицы documents

create table number_documents(
	id serial primary key,
	plates_id int not null unique,
	documents_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (documents_id)
		references documents(id)); 
	
	select * FROM number_documents;
	
insert into number_documents(plates_id, documents_id)
values (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (10,10),
       (11,11),
       (12,12),
       (13,13),
       (14,14),
       (15,15),
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25);
      
--Создаем таблицу plates_VIN в которой связываем id из таблицы с номерами с id из таблицы VIN_number
      
create table plates_VIN(
	id serial primary key,
	plates_id int not null unique,
	VIN_id int not null,
	foreign key (plates_id)
		references number_plates(id),
	foreign key (VIN_id)
		references VIN_number(id));

insert into plates_VIN(plates_id, VIN_id)
values (1,1),
       (2,2),
       (3,3),
       (4,4),
       (5,5),
       (6,6),
       (7,7),
       (8,8),
       (9,9),
       (10,10),
       (11,11),
       (12,12),
       (13,13),
       (14,14),
       (15,15),
       (16,16),
       (17,17),
       (18,18),
       (19,19),
       (20,20),
       (21,21),
       (22,22),
       (23,23),
       (24,24),
       (25,25);	
	
	
	
	