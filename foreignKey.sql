create table customers(
	id int auto_increment primary key,
    name varchar(40),
    address varchar(255),
    email varchar(255)
);
create table orders(
	orderid int auto_increment,
    staff varchar(50),
    customer_id int,
    primary key(orderid),
    foreign key(customer_id) references customers(id)
);

drop table orders;