
create table tb_order(
	id int primary key auto_increment,
	payment double(10,2),
	payment_type tinyint,
	status TINYINT
);

create table tb_goods(
	id int primary key auto_increment,
	title varchar(100),
	price double(10,2)
);

create table tb_order_goods(
	id int primary key auto_increment,
	order_id int,
	goods_id int,
	count int
);

alter table tb_order_goods add CONSTRAINT fk_order_id foreign key(order_id) REFERENCES tb_order(id);

alter table tb_order_goods add CONSTRAINT fk_goods_id foreign key(goods_id) REFERENCES tb_goods(id);

drop table if exists msg;

create table msg(
	id int primary key auto_increment,
	description varchar(100),
	goods_id int,
	order_id int
);

alter table msg add CONSTRAINT fk_msg_goods foreign key(goods_id) REFERENCES tb_goods(id);
alter table msg add CONSTRAINT fk_msg_order foreign key(order_id) REFERENCES tb_order(id);