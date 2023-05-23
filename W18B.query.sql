insert  into customer (username, password, created_at)
values
('user1', 'password1', '2023-05-20 09:30:00'),
('user2', 'password1', '2023-05-19 14:45:00'),
('user3', 'password1', '2023-05-18 16:20:00'),
('user4', 'password1', '2023-05-17 10:10:00'),
('user5', 'password1', '2023-05-16 11:25:00');

insert into item (name, price, description)
values
 ('item1',1.00, 'desc1'),
('item2', 2.00, 'desc2'),
('item3', 3.00, 'desc1'),
('item4', 4.00, 'desc1'),
('item5', 5.00, 'desc1'),
('item6', 6.00, 'desc1'),
('item7', 7.00, 'desc1'),
('item8', 8.00, 'desc1'),
('item9', 9.00, 'desc1'),
('item10',10.00, 'desc1');
insert into `order` (created_at, customer_id)
values
('2023-04-20 10:00:00', 1),
('2023-05-19 15:30:00', 2),
('2023-02-18 16:45:00', 3),
('2023-05-17 11:20:00', 4),
('2023-03-16 12:15:00', 5),
('2023-01-20 10:00:00', 1),
('2023-04-19 15:30:00', 2),
('2023-04-18 16:45:00', 3),
('2023-05-17 11:20:00', 4),
('2023-03-16 12:15:00', 5),
('2023-02-15 09:10:00', 1),
('2023-01-14 14:25:00', 2),
('2023-05-13 17:30:00', 3),
('2023-02-12 10:45:00', 4);


insert into order_item (order_id, item_id)
values
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(1, 3),
(2, 5),
(3, 2),
(4, 4),
(5, 1);

select c.username ,o.created_at
from customer c inner join `order` o on c.id=o.customer_id
order by o.created_at desc
limit 5;

select c.username, count(o.customer_id) 
from  customer c inner join `order` o on c.id=o.customer_id
group by c.username;

select avg(i.price) 
from item i inner join order_item oi on i.id= oi.item_id;

select c.username, sum(i.price) 
from customer c inner join `order` o on c.id = o.customer_id
inner join order_item oi on o.id = oi.order_id
inner join item i on oi.item_id = i.id
group by c.username
order by i.price desc
limit 1;

select c.username, sum(i.price) 
from customer c inner join `order` o on c.id = o.customer_id
inner join order_item oi on o.id = oi.order_id
inner join item i on oi.item_id = i.id
group by c.username;

select c.username, avg(i.price) 
from customer c inner join `order` o on c.id = o.customer_id
inner join order_item oi on o.id = oi.order_id
inner join item i on oi.item_id = i.id
group by c.username;

















