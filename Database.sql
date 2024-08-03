CREATE DATABASE ShoeStore;
GO

USE ShoeStore;
GO

CREATE TABLE dbo.admins(
	_id_admin INT IDENTITY(1,1) PRIMARY KEY,
	_admin_code VARCHAR(20) UNIQUE NOT NULL,
	_first_name NVARCHAR(50),
	_last_name NVARCHAR(50),
	_gender VARCHAR(10),
	_address NVARCHAR(255),
	_phone_number VARCHAR(15) UNIQUE,
	_email VARCHAR(255) UNIQUE, 
	_password VARBINARY(64),
	_role VARCHAR(30),
	_status NVARCHAR(255),
	_birthday DATE
);
GO

CREATE TABLE dbo.customer(
	_id_customer INT IDENTITY(1,1) PRIMARY KEY,
	_customer_code VARCHAR(20) UNIQUE NOT NULL,
	_first_name NVARCHAR(50),
	_last_name NVARCHAR(50),
	_gender VARCHAR(10),
	_address NVARCHAR(255),
	_phone_number VARCHAR(15) UNIQUE,
	_email VARCHAR(255) UNIQUE,
	_birthday DATE
);
GO
CREATE TABLE dbo.account_customer(
	_id_account_customer INT IDENTITY(1,1) PRIMARY KEY,
	_id_customer INT UNIQUE NOT NULL,
	_password VARBINARY(64),
	_accumulated_points BIGINT,
	_status NVARCHAR(255),
	CONSTRAINT FK_accountCustomer_idCustomer FOREIGN KEY(_id_customer) REFERENCES dbo.customer(_id_customer) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.address_customer(
	_id_address INT IDENTITY(1,1) PRIMARY KEY,
	_id_customer INT,
	_customer_name NVARCHAR(100),
	_phone_number VARCHAR(15),
	_address NVARCHAR(255),
	CONSTRAINT FK_address_idCustomer FOREIGN KEY(_id_customer) REFERENCES dbo.customer(_id_customer) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.brand(
	_id_brand INT IDENTITY(1,1) PRIMARY KEY,
	_brand_code VARCHAR(20) UNIQUE NOT NULL,
	_brand_name NVARCHAR(50),
	_description  NVARCHAR(255)
);
GO
CREATE TABLE dbo.category(
	_id_category INT IDENTITY(1,1) PRIMARY KEY,
	_category_code VARCHAR(20) UNIQUE NOT NULL,
	_category_name NVARCHAR(50),
	_description  NVARCHAR(255)
);
GO
CREATE TABLE dbo.material(
	_id_material INT IDENTITY(1,1) PRIMARY KEY,
	_material_code VARCHAR(20) UNIQUE NOT NULL,
	_material_name NVARCHAR(50)
);
GO
CREATE TABLE dbo.sole(
	_id_sole INT IDENTITY(1,1) PRIMARY KEY,
	_sole_code VARCHAR(50) UNIQUE NOT NULL,
	_sole_name NVARCHAR(50)
);
GO
CREATE TABLE dbo.color(
	_id_color INT IDENTITY(1,1) PRIMARY KEY,
	_color_code VARCHAR(50) UNIQUE NOT NULL,
	_color_name NVARCHAR(50)
);
GO
CREATE TABLE dbo.sizes(
	_id_size INT IDENTITY(1,1) PRIMARY KEY,
	_size_code VARCHAR(50) UNIQUE NOT NULL,
	_size_name NVARCHAR(50)
);
GO
CREATE TABLE dbo.coupons(
	_id_coupons INT IDENTITY(1,1) PRIMARY KEY,
	_coupons_code VARCHAR(50) UNIQUE NOT NULL,
	_conditions DECIMAL(38,5),
	_coupons_price DECIMAL(38,5),
	_quantity INT,
	_date_created DATETIME,
	_deadline DATETIME
);
GO
CREATE TABLE dbo.sale(
	_id_sale INT IDENTITY(1,1) PRIMARY KEY,
	_sale_code VARCHAR(50) UNIQUE NOT NULL,
	_sale_name NVARCHAR(MAX),
	_percent FLOAT,
	_date_created DATETIME,
	_deadline DATETIME
);
GO

CREATE TABLE dbo.product(
	_id_product INT IDENTITY(1,1) PRIMARY KEY,
	_product_code VARCHAR(50) UNIQUE NOT NULL,
	_product_name NVARCHAR(100),
	_id_brand INT,
	_id_category INT,
	_id_sole INT,
	_id_material INT,
	_date_created DATETIME,
	_date_updated DATETIME,
	CONSTRAINT FK_product_idBrand FOREIGN KEY(_id_brand) REFERENCES dbo.brand(_id_brand) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_product_idCategory FOREIGN KEY(_id_category) REFERENCES dbo.category(_id_category) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_product_idSole FOREIGN KEY(_id_sole) REFERENCES dbo.sole(_id_sole) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_product_idMaterial FOREIGN KEY(_id_material) REFERENCES dbo.material(_id_material) ON UPDATE CASCADE ON DELETE CASCADE
);
GO

CREATE TABLE dbo.product_images(
	_id_product_images INT IDENTITY(1,1) PRIMARY KEY,
	_id_product INT,
	_images VARCHAR(MAX),
	CONSTRAINT FK_productImages_idProduct FOREIGN KEY(_id_product) REFERENCES dbo.product(_id_product) ON UPDATE CASCADE ON DELETE CASCADE
)
GO

CREATE TABLE dbo.product_details(
	_id_product_details INT IDENTITY(1,1) PRIMARY KEY,
	_id_product INT,
	_id_color INT,
	_id_size INT,
	_id_sale INT,
	_price_old DECIMAL(38,5),
	_price_new DECIMAL(38,5),
	_quantity INT,
	_status NVARCHAR(255),
	_date_created DATETIME,
	_date_updated DATETIME,
	CONSTRAINT FK_productDetails_idProduct FOREIGN KEY(_id_product) REFERENCES dbo.product(_id_product) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_productDetails_idColor FOREIGN KEY(_id_color) REFERENCES dbo.color(_id_color) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_productDetails_idSize FOREIGN KEY(_id_size) REFERENCES dbo.sizes(_id_size) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_productDetails_idSale FOREIGN KEY(_id_sale) REFERENCES dbo.sale(_id_sale) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.history_sale(
	_id_history_sale INT IDENTITY(1,1) PRIMARY KEY,
	_id_product_details INT,
	_id_sale INT
);
GO
CREATE TABLE dbo.cart(
	_id_cart INT IDENTITY(1,1) PRIMARY KEY,
	_id_customer INT,
	_id_product_details INT,
	_quantity INT,
	_date_created DATETIME,
	_date_updated DATETIME,
	CONSTRAINT FK_cart_idCustomer FOREIGN KEY(_id_customer) REFERENCES dbo.customer(_id_customer) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_cart_idProductDetails FOREIGN KEY(_id_product_details) REFERENCES dbo.product_details(_id_product_details) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.comments(
	_id_comments INT IDENTITY(1,1) PRIMARY KEY,
	_id_customer INT,
	_id_product_details INT,
	_comment NVARCHAR(255),
	_status NVARCHAR(100),
	CONSTRAINT FK_comments_idCustomer FOREIGN KEY(_id_customer) REFERENCES dbo.customer(_id_customer) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_comments_idProductDetails FOREIGN KEY(_id_product_details) REFERENCES dbo.product_details(_id_product_details) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.orders(
	_id_orders INT IDENTITY(1,1) PRIMARY KEY,
	_order_code VARCHAR(20) UNIQUE NOT NULL,
	_id_customer INT,
	_id_admin INT,
	_id_coupons INT,
	_customer_name NVARCHAR(100),
	_phone_number VARCHAR(15),
	_address NVARCHAR(255),
	_transport_price DECIMAL(38,5), -- Tiền vận chuyển
	_reduced_price DECIMAL(38,5), -- Tiền giảm từ coupons
	_exchange_price DECIMAL(38,5), -- Đổi điểm sang tiền
	_total_price DECIMAL(38,5), -- Tổng tiền hóa đơn sử dụng để thống kê
	_total_payouts DECIMAL(38,5), -- Tổng tiền KH cần thanh toán bao gồm cả phí vận chuyển
	_order_type NVARCHAR(255),
	_status NVARCHAR(255),
	_date_created DATETIME,
	_date_updated DATETIME,
	CONSTRAINT FK_orders_idCustomer FOREIGN KEY(_id_customer) REFERENCES dbo.customer(_id_customer)ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_orders_idAdmin FOREIGN KEY(_id_admin) REFERENCES dbo.admins(_id_admin) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_orders_idCoupons FOREIGN KEY(_id_coupons) REFERENCES dbo.coupons(_id_coupons) ON UPDATE CASCADE ON DELETE CASCADE
);
GO
CREATE TABLE dbo.order_details(
	_id_order_details INT IDENTITY(1,1) PRIMARY KEY,
	_id_product_details INT,
	_id_orders INT,
	_quantity INT,
	_total_price DECIMAL(38,5),
	_status NVARCHAR(255),
	CONSTRAINT FK_orderDetails_idProductDetails FOREIGN KEY(_id_product_details) REFERENCES dbo.product_details(_id_product_details) ON UPDATE CASCADE ON DELETE CASCADE,
	CONSTRAINT FK_orderDetails_idOrders FOREIGN KEY(_id_orders) REFERENCES dbo.orders(_id_orders) ON UPDATE CASCADE ON DELETE CASCADE

);
GO
CREATE TABLE dbo.order_history(
	_id_order_history INT IDENTITY(1,1) PRIMARY KEY,
	_id_orders INT,
	_description NVARCHAR(255),
	_changed_time DATETIME,
	CONSTRAINT FK_orderHistory_idOrders FOREIGN KEY(_id_orders) REFERENCES dbo.orders(_id_orders) ON UPDATE CASCADE ON DELETE CASCADE
);
GO

