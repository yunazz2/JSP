-- product 상품 테이블
CREATE TABLE joeun.product (
	product_id varchar(100) NOT NULL,
	name varchar(100) NOT NULL,
	unit_price INT NULL,
	description TEXT NULL,
	manufacturer varchar(100) NULL,
	category varchar(100) NULL,
	units_in_stock INT DEFAULT 0 NOT NULL,
	`condition` varchar(100) NULL,
	CONSTRAINT product_pk PRIMARY KEY (product_id)
);

select * from joeun.product;