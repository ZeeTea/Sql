create table seller (
  seller_id serial primary key,
  first_name varchar(45),
  last_name varchar(45)
);
insert into seller(
	first_name,
	last_name
)values(
	'Chrysler',
	'Luts'
),(
	'James',
	'Green'
);

create table car_model (
  car_id serial primary key,
  make varchar(45),
  model varchar(45),
  price float
);
insert into car_model(
	make,
	model,
	price 
)values(
	'Chrysler Viper',
	'Dodge',
	600000.00
),(
	'Dodge Challenger',
	'Dodge',
	89000.00
),(
	'VW Bus',
	'Volts Wagon',
	58000.00
);

create table car_inventory (
  car_inventory_id serial primary key,
  stock integer,
  car_id integer references car_model(car_id),
  seller_id integer references seller(seller_id)
);
insert into car_inventory(
	stock,
	car_id,
	seller_id 
)values(
	10,
	1,
	1
),(
	15,
	2,
	1
),(
	6,
	3,
	2
);

create table customer (
  customer_id serial primary key,
  phone_number integer,
  car_dealership_id integer references car_dealership(car_dealership_id),
  repair_id integer references repairs(repair_id)
);
insert into customer (
	phone_number
)values(
	785-284-6704
);

create table car_dealership (
  car_dealership_id serial primary key,
  car_id integer references car_model(car_id),
  seller_id integer references seller(seller_id)
);

create table repairs (
  repair_id serial primary key,
  service_ticket integer,
  price float
);
insert into repairs (
	service_ticket,
	price
)values(
	1,
	67.55
),(
	2,
	575.69
),(
	1,
	420.00
);