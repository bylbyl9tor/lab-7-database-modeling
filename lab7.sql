select * from warehouse.pharmacy_order;
select * from warehouse.pharmacy;
select * from warehouse.product;
select * from warehouse.pharmacy_warehouse;
select * from warehouse.providers;
select * from warehouse.order_position;

select * from warehouse.pharmacy_order where id in(1, 2,3);
select * from warehouse.pharmacy where id in(1, 2,3);
select * from warehouse.product where id in(1, 2,3);
select * from warehouse.pharmacy_warehouse where id in(1, 2,3);
select * from warehouse.providers where id in(1, 2,3);
select * from warehouse.order_position where id in(1, 2,3);

select id, (reserved_number_of_products+pharmacy_warehouse.available_number_of_products) as product_in_warehouse
from warehouse.pharmacy_warehouse
GROUP BY id
HAVING product_in_warehouse>100;

select * from warehouse.pharmacy_warehouse order by id DESC limit 100;
select * from warehouse.pharmacy order by name DESC limit 100;
select * from warehouse.order_position order by id DESC limit 100;
select * from warehouse.pharmacy_order order by created_at DESC limit 100;
select * from warehouse.providers order by name DESC limit 100;
select * from warehouse.product order by name DESC limit 100;

select count(*) from warehouse.pharmacy_warehouse where id>10;
select count(*) from warehouse.pharmacy where id>10;
select count(*) from warehouse.order_position where id>10;
select count(*) from warehouse.pharmacy_order where id>10;
select count(*) from warehouse.providers where id>10;
select count(*) from warehouse.product where id>10;

select * from warehouse.pharmacy_warehouse where id = 51 OR id=52 order by product_id DESC;
select * from warehouse.pharmacy where id in (1,2,3,4,5,6,7,8,9,10) order by login;
select count(*) from warehouse.order_position where id>10;
select count(*) from warehouse.pharmacy_order where id>10;
select count(*) from warehouse.providers where id>10;
select count(*) from warehouse.product where id>10;


