create table contacts
(	contact_id int(11) not null auto_increment,
	last_name varchar(30) not null,
    first_name varchar(25),
    birthday date,
    constraint contacts_pk primary key(contact_id)
);
create table suppliers
(	supplier_id int(11) not null auto_increment,
	supplier_name varchar(50) not null,
    account_rep varchar(30) not null default 'TBD',
    constraint suppliers_pk primary key (supplier_id)
);
drop table contacts, suppliers;
alter table contacts
	drop column last_name2;
alter table contacts
	add last_name1 varchar(40) not null
		after contact_id,
	add last_name2 varchar(35) null
		after last_name1;
alter table contacts
	modify last_name varchar(40)
		after contact_id;
alter table contacts
	change last_name2 city 
		varchar(35) not null;
alter table contacts
	modify city varchar(35) not null
		after birthday;
alter table people
	rename to contacts;



