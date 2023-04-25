--Номера плюс марки авто

select number_plates.plates , car_brand.brand
from car_brand 
inner join number_for_brand on number_for_brand.brand_id = car_brand.id
inner join number_plates on number_plates.id = number_for_brand.plates_id;


--Номера плюс класс авто

select  number_plates.plates , class_cars.classification 
from class_cars inner join number_for_class on number_for_class.classification_id = class_cars.id
inner join number_plates on number_plates.id = number_for_class.plates_id;


--Номера плюс трансмиссия

select number_plates.plates , car_transmission.transmission
from car_transmission 
inner join car_brand_transmission on car_brand_transmission.transmission_id = car_transmission.id 
inner join number_plates on number_plates.id = car_brand_transmission.plates_id;


--Номера плюс топливо

select  number_plates.plates,type_fuel.fuel 
from type_fuel 
inner join car_brand_fuel on car_brand_fuel.fuel_id = type_fuel.id 
inner join number_plates on number_plates.id = car_brand_fuel.plates_id;


--Класс авто плюс стоимость

select class_cars.classification, price_list.price 
from class_cars 
inner join class_price on class_cars.id = class_price.classification_id
inner join price_list on price_list.id  = class_price.classification_id;

--Номера, марка, класс, трансмиссия, топливо, цена.


select number_plates.plates, car_brand.brand, class_cars.classification, car_transmission.transmission, type_fuel.fuel, price_list.price 
from class_cars 
inner join number_for_class on number_for_class.classification_id = class_cars.id
inner join number_plates on number_plates.id = number_for_class.plates_id
inner join number_for_brand on number_for_brand.plates_id = number_plates.id
inner join car_brand on car_brand.id = number_for_brand.brand_id
inner join car_brand_transmission on car_brand_transmission.plates_id = number_plates.id
inner join car_transmission on car_transmission.id = car_brand_transmission.transmission_id
inner join car_brand_fuel on car_brand_fuel.plates_id = number_plates.id
inner join type_fuel on type_fuel.id = car_brand_fuel.fuel_id
inner join class_price on class_cars.id = class_price.classification_id 
inner join price_list on price_list.id = class_price.price_id
where brand  = 'renault';

select car_brand.brand, class_cars.classification, car_transmission.transmission, type_fuel.fuel, price_list.price 
from class_cars 
inner join number_for_class on number_for_class.classification_id = class_cars.id
inner join number_plates on number_plates.id = number_for_class.plates_id
inner join number_for_brand on number_for_brand.plates_id = number_plates.id
inner join car_brand on car_brand.id = number_for_brand.brand_id
inner join car_brand_transmission on car_brand_transmission.plates_id = number_plates.id
inner join car_transmission on car_transmission.id = car_brand_transmission.transmission_id
inner join car_brand_fuel on car_brand_fuel.plates_id = number_plates.id
inner join type_fuel on type_fuel.id = car_brand_fuel.fuel_id
inner join class_price on class_cars.id = class_price.classification_id 
inner join price_list on price_list.id = class_price.price_id;


--Номера машин плюс докумнеты

select number_plates.plates, documents.tech_inspection, documents.number_insurance, vin_number.vin 
from documents  
inner join number_documents on number_documents.documents_id = documents.id
inner join number_plates on number_plates.id = number_documents.plates_id
inner join plates_vin on plates_vin.plates_id = number_plates.id 
inner join vin_number on plates_vin.vin_id = vin_number.id;






 
















