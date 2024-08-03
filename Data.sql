USE ShoeStore
GO

-- Insert data into dbo.admins
INSERT INTO dbo.admins (_admin_code, _first_name, _last_name, _gender, _address, _phone_number, _email, _password, _role, _status, _birthday) VALUES
('ADM001', 'John', 'Doe', 'Male', '123 Main St', '0387172021', 'john.doe@gmail.com', HASHBYTES('SHA2_256', 'password1'), 'Admin', 'Active', '1980-01-01'),
('ADM002', 'Jane', 'Smith', 'Female', '456 Elm St', '0987807660', 'jane.smith@gmail.com', HASHBYTES('SHA2_256', 'password2'), 'Admin', 'Active', '1985-02-02'),
('ADM003', 'Alice', 'Johnson', 'Female', '789 Oak St', '0982065633', 'alice.johnson@gmail.com', HASHBYTES('SHA2_256', 'password3'), 'Admin', 'Active', '1990-03-03'),
('ADM004', 'Bob', 'Williams', 'Male', '101 Pine St', '0382287831', 'bob.williams@gmail.com', HASHBYTES('SHA2_256', 'password4'), 'Admin', 'Active', '1975-04-04'),
('ADM005', 'Carol', 'Brown', 'Female', '202 Maple St', '0397876398', 'carol.brown@gmail.com', HASHBYTES('SHA2_256', 'password5'), 'Admin', 'Active', '1988-05-05'),
('ADM006', 'David', 'Davis', 'Male', '303 Birch St', '0972265932', 'david.davis@gmail.com', HASHBYTES('SHA2_256', 'password6'), 'Admin', 'Active', '1972-06-06'),
('ADM007', 'Eve', 'Miller', 'Female', '404 Cedar St', '0365289721', 'eve.miller@gmail.com', HASHBYTES('SHA2_256', 'password7'), 'Admin', 'Active', '1992-07-07'),
('ADM008', 'Frank', 'Wilson', 'Male', '505 Spruce St', '0912712836', 'frank.wilson@gmail.com', HASHBYTES('SHA2_256', 'password8'), 'Admin', 'Active', '1969-08-08'),
('ADM009', 'Grace', 'Moore', 'Female', '606 Walnut St', '0948865529', 'grace.moore@gmail.com', HASHBYTES('SHA2_256', 'password9'), 'Admin', 'Active', '1983-09-09'),
('ADM010', 'Henry', 'Taylor', 'Male', '707 Cherry St', '0371428632', 'henry.taylor@gmail.com', HASHBYTES('SHA2_256', 'password10'), 'Admin', 'Active', '1995-10-10');

-- Insert data into dbo.customer
INSERT INTO dbo.customer (_customer_code, _first_name, _last_name, _gender, _address, _phone_number, _email, _birthday) VALUES
('CUS001', 'Anna', 'White', 'Female', '123 Main St', '0387172021', 'anna.white@gmail.com', '1990-01-01'),
('CUS002', 'Brian', 'Green', 'Male', '456 Elm St', '0987807660', 'brian.green@gmail.com', '1985-02-02'),
('CUS003', 'Clara', 'Black', 'Female', '789 Oak St', '0982065633', 'clara.black@gmail.com', '1990-03-03'),
('CUS004', 'Daniel', 'Blue', 'Male', '101 Pine St', '0382287831', 'daniel.blue@gmail.com', '1975-04-04'),
('CUS005', 'Ella', 'Yellow', 'Female', '202 Maple St', '0397876398', 'ella.yellow@gmail.com', '1988-05-05'),
('CUS006', 'Frank', 'Red', 'Male', '303 Birch St', '0972265932', 'frank.red@gmail.com', '1972-06-06'),
('CUS007', 'Gina', 'Purple', 'Female', '404 Cedar St', '0365289721', 'gina.purple@gmail.com', '1992-07-07'),
('CUS008', 'Harry', 'Orange', 'Male', '505 Spruce St', '0912712836', 'harry.orange@gmail.com', '1969-08-08'),
('CUS009', 'Ivy', 'Pink', 'Female', '606 Walnut St', '0948865529', 'ivy.pink@gmail.com', '1983-09-09'),
('CUS010', 'Jack', 'Brown', 'Male', '707 Cherry St', '0371428632', 'jack.brown@gmail.com', '1995-10-10');

-- Insert data into dbo.account_customer
INSERT INTO dbo.account_customer (_id_customer, _password, _accumulated_points, _status) VALUES
(1, HASHBYTES('SHA2_256', 'password1'), 0, 'Active'),
(2, HASHBYTES('SHA2_256', 'password2'), 0, 'Active'),
(3, HASHBYTES('SHA2_256', 'password3'), 0, 'Active'),
(4, HASHBYTES('SHA2_256', 'password4'), 0, 'Active'),
(5, HASHBYTES('SHA2_256', 'password5'), 0, 'Active'),
(6, HASHBYTES('SHA2_256', 'password6'), 0, 'Active'),
(7, HASHBYTES('SHA2_256', 'password7'), 0, 'Active'),
(8, HASHBYTES('SHA2_256', 'password8'), 0, 'Active'),
(9, HASHBYTES('SHA2_256', 'password9'), 0, 'Active'),
(10, HASHBYTES('SHA2_256', 'password10'), 0, 'Active');

-- Insert data into dbo.address_customer
INSERT INTO dbo.address_customer (_id_customer, _customer_name, _phone_number, _address) VALUES
(1, 'Anna White', '0387172021', '123 Main St'),
(2, 'Brian Green', '0987807660', '456 Elm St'),
(3, 'Clara Black', '0982065633', '789 Oak St'),
(4, 'Daniel Blue', '0382287831', '101 Pine St'),
(5, 'Ella Yellow', '0397876398', '202 Maple St'),
(6, 'Frank Red', '0972265932', '303 Birch St'),
(7, 'Gina Purple', '0365289721', '404 Cedar St'),
(8, 'Harry Orange', '0912712836', '505 Spruce St'),
(9, 'Ivy Pink', '0948865529', '606 Walnut St'),
(10, 'Jack Brown', '0371428632', '707 Cherry St');

-- Insert data into dbo.brand
INSERT INTO dbo.brand (_brand_code, _brand_name, _description) VALUES
('BRD001', 'Nike', 'Sportswear'),
('BRD002', 'Adidas', 'Sportswear'),
('BRD003', 'Puma', 'Sportswear'),
('BRD004', 'Reebok', 'Sportswear'),
('BRD005', 'Under Armour', 'Sportswear'),
('BRD006', 'New Balance', 'Sportswear'),
('BRD007', 'Asics', 'Sportswear'),
('BRD008', 'Skechers', 'Casual'),
('BRD009', 'Vans', 'Casual'),
('BRD010', 'Converse', 'Casual');

-- Insert data into dbo.category
INSERT INTO dbo.category (_category_code, _category_name, _description) VALUES
('CAT001', 'Running', 'Running shoes'),
('CAT002', 'Basketball', 'Basketball shoes'),
('CAT003', 'Football', 'Football shoes'),
('CAT004', 'Casual', 'Casual shoes'),
('CAT005', 'Sandals', 'Sandals'),
('CAT006', 'Boots', 'Boots'),
('CAT007', 'Dress', 'Dress shoes'),
('CAT008', 'Training', 'Training shoes'),
('CAT009', 'Walking', 'Walking shoes'),
('CAT010', 'Tennis', 'Tennis shoes');

-- Insert data into dbo.material
INSERT INTO dbo.material (_material_code, _material_name) VALUES
('MAT001', 'Leather'),
('MAT002', 'Suede'),
('MAT003', 'Mesh'),
('MAT004', 'Synthetic'),
('MAT005', 'Rubber'),
('MAT006', 'Canvas'),
('MAT007', 'Textile'),
('MAT008', 'Foam'),
('MAT009', 'Plastic'),
('MAT010', 'EVA');

-- Insert data into dbo.sole
INSERT INTO dbo.sole (_sole_code, _sole_name) VALUES
('SOL001', 'Rubber Sole'),
('SOL002', 'Synthetic Sole'),
('SOL003', 'EVA Sole'),
('SOL004', 'PU Sole'),
('SOL005', 'TPR Sole'),
('SOL006', 'PVC Sole'),
('SOL007', 'Leather Sole'),
('SOL008', 'Crepe Sole'),
('SOL009', 'Foam Sole'),
('SOL010', 'Cork Sole');

-- Insert data into dbo.color
INSERT INTO dbo.color (_color_code, _color_name) VALUES
('COL001', 'Red'),
('COL002', 'Blue'),
('COL003', 'Green'),
('COL004', 'Yellow'),
('COL005', 'Black'),
('COL006', 'White'),
('COL007', 'Pink'),
('COL008', 'Purple'),
('COL009', 'Orange'),
('COL010', 'Brown');

-- Insert data into dbo.sizes
INSERT INTO dbo.sizes (_size_code, _size_name) VALUES
('SIZ001', '35'),
('SIZ002', '36'),
('SIZ003', '37'),
('SIZ004', '38'),
('SIZ005', '39'),
('SIZ006', '40'),
('SIZ007', '41'),
('SIZ008', '42'),
('SIZ009', '43'),
('SIZ010', '44');

-- Insert data into dbo.product
INSERT INTO dbo.product (_product_code, _product_name, _id_brand, _id_category, _id_sole, _id_material, _date_created, _date_updated) VALUES
('PRD001', 'Nike Air Max', 1, 1, 1, 1, GETDATE(), GETDATE()),
('PRD002', 'Adidas Ultraboost', 2, 1, 1, 2, GETDATE(), GETDATE()),
('PRD003', 'Puma Suede Classic', 3, 4, 1, 1, GETDATE(), GETDATE()),
('PRD004', 'Reebok Club C', 4, 4, 1, 3, GETDATE(), GETDATE()),
('PRD005', 'Under Armour HOVR', 5, 1, 1, 4, GETDATE(), GETDATE()),
('PRD006', 'New Balance 574', 6, 4, 1, 5, GETDATE(), GETDATE()),
('PRD007', 'Asics Gel-Kayano', 7, 1, 1, 6, GETDATE(), GETDATE()),
('PRD008', 'Skechers Go Walk', 8, 9, 1, 1, GETDATE(), GETDATE()),
('PRD009', 'Vans Old Skool', 9, 4, 1, 7, GETDATE(), GETDATE()),
('PRD010', 'Converse Chuck Taylor', 10, 4, 1, 8, GETDATE(), GETDATE());

-- Insert data into dbo.product_details
INSERT INTO dbo.product_details (_id_product, _id_color, _id_size, _price_old, _price_new, _quantity, _status, _date_created, _date_updated) VALUES
(1, 1, 1, 100.00, 90.00, 50, 'Available', GETDATE(), GETDATE()),
(2, 2, 2, 120.00, 100.00, 50, 'Available', GETDATE(), GETDATE()),
(3, 3, 3, 80.00, 60.00, 50, 'Available', GETDATE(), GETDATE()),
(4, 4, 4, 90.00, 70.00, 50, 'Available', GETDATE(), GETDATE()),
(5, 5, 5, 110.00, 80.00, 50, 'Available', GETDATE(), GETDATE()),
(6, 6, 6, 130.00, 100.00, 50, 'Available', GETDATE(), GETDATE()),
(7, 7, 7, 140.00, 110.00, 50, 'Available', GETDATE(), GETDATE()),
(8, 8, 8, 150.00, 120.00, 50, 'Available', GETDATE(), GETDATE()),
(9, 9, 9, 160.00, 130.00, 50, 'Available', GETDATE(), GETDATE()),
(10, 10, 10, 170.00, 140.00, 50, 'Available', GETDATE(), GETDATE());
