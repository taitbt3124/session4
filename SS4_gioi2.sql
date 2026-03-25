create table product(
    id serial primary key ,
    name varchar(100),
    category varchar(50),
    price int,
    stock int,
    manufacturer varchar(50)
)

insert into product values
(default, 'Laptop Dell XPS 13', 'Laptop', 25000000, 12,'Dell'),
(default, 'Chuột Logitech M90', 'Phụ kiện', 150000, 50,'Logitech'),
(default, 'Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0,'Razer'),
(default, 'Macbook Air M2', 'Laptop', 32000000, 7,'Apple'),
(default, 'iPhone 14 Pro Max', 'Điện thoại', 35000000, 15,'Apple'),
(default, 'Laptop Dell XPS 13', 'Laptop', 25000000, 12,'Dell'),
(default, 'Tai nghe AirPods 3', 'Phụ kiện', 4500000, null,'Apple');

insert into public.product
values (default, 'Chuột không dây Logitech M170', 'Phụ kiện',300000,20,'Logitech');

update product set price = price*1.1 where manufacturer = 'Apple';

delete
from product
where stock = 0;

select product.name, product.stock from product where stock isnull ;

select distinct manufacturer
from product;

select product.name, product.price from product
order by price desc ,name asc ;

select product.name from product where name ILIKE '%laptop%';

select product.name, product.price from product order by price desc limit 2;




select *from product;

