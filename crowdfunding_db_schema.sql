create table campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar(100) not null,
	description text not null,
	goal numeric(10,2) not null,
	pledged numeric(10,2) not null,
	outcome varchar(50) not null,
	backers_count int not null,
	country varchar(10) not null,
	currency varchar(10) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(10) not null,
	subcategory_id varchar(10) not null,
	primary key (cf_id),
	foreign key (category_id) references category(category_id),
	foreign key (subcategory_id) references subcategory(subcategory_id),
	foreign key (contact_id) references contact(contact_id)
);

create table category(
	category_id varchar(10) primary key not null,
	category varchar(50) not null
);

insert into category (category_id, category)
values ('cat1', 'food'),
('cat2', 'music'),
('cat3', 'technology'),
('cat4', 'theater'),
('cat5', 'film & video'),
('cat6', 'publishing'),
('cat7', 'games'),
('cat8', 'photography'),
('cat9', 'journalism');

create table subcategory(
	subcategory_id varchar(10) primary key not null,
	subcategory varchar(50) not null
);

create table contact(
	contact_id int primary key not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(100) not null
);
select * from campaign;
select * from category;
select * from subcategory;
select* from contact;