select * from classicmodels.customers;
select customerName, phone, city, country from classicmodels.customers;
select customerName from classicmodels.customers where customerName = 'Atelier graphique';
select customerName from classicmodels.customers where customerName like '%A%';
select customerName, city from classicmodels.customers where city in ('Nantes', 'Las VeGas', 'Warszawa', 'NYC');
select * from classicmodels.orders where orderNumber between 10100 and 10110;
select orderDate as shipped from classicmodels.orders where orderDate <= '2003-03-03';
