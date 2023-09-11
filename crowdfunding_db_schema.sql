drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

-- Create contacts table.
create table contacts (
	contact_id int unique primary key not null,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null
);

-- Create category table.
create table category (
	category_id varchar unique primary key not null,
	category varchar not null
);

-- Create subcategory table.
create table subcategory (
	subcategory_id varchar unique primary key not null,
	subcategory varchar not null
);

-- Create campaign table.
create table campaign (
	cf_id int primary key not null,
	contact_id int not null,
	foreign key (contact_id) references contacts(contact_id),
	company_name varchar not null,
	description varchar not null,
	goal float not null,
	pledged float not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launch_date varchar not null,
	end_date varchar not null,
	category_id varchar not null,
	foreign key (category_id) references category(category_id),
	subcategory_id varchar not null,
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

