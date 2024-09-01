USE shoe_store_database;
--BRAND--
INSERT INTO brands (brand_code, brand_name, description) VALUES
('nike', 'Nike', 'Tập đoàn đa quốc gia Mỹ chuyên thiết kế, phát triển, sản xuất.'),
('adidas', 'Adidas', 'Tập đoàn nhiều quốc gia Đức chuyên thiết kế và sản xuất giày thể thao, quần áo và phụ kiện.'),
('puma', 'Puma', 'Tập đoàn nhiều quốc gia Đức chuyên thiết kế và sản xuất giày thể thao và phụ kiện.'),
('reebok', 'Reebok', 'Thương hiệu toàn cầu lấy cảm hứng từ Mỹ với di sản về thể dục sâu sắc và một sứ mệnh rõ ràng.'),
('new_balance', 'New Balance', 'Tập đoàn nhiều quốc gia Mỹ chuyên sản xuất giày dép.'),
('under_armour', 'Under Armour', 'Tập đoàn Mỹ chuyên sản xuất giày dép, quần áo thể thao và hàng tiêu dùng.'),
('asics', 'Asics', 'Tập đoàn nhiều quốc gia Nhật Bản sản xuất giày dép và thiết bị thể thao dành cho nhiều môn thể thao.'),
('converse', 'Converse', 'Công ty giày dép Mỹ thiết kế, phân phối và cấp giấy phép giày thể thao, giày trượt tuyết, giày thời trang, quần áo và phụ kiện.'),
('vans', 'Vans', 'Hãng sản xuất giày trượt Mỹ và các sản phẩm liên quan.'),
('fila', 'Fila', 'Công ty hàng hoá thể thao Ý-Hàn Quốc được thành lập tại Ý, và hiện đang đặt trụ sở tại Hàn Quốc.');
--CATEGORIES--
INSERT INTO categories (category_code, category_name, description) VALUES
('running', 'Chạy bộ', 'Dành cho các sản phẩm liên quan đến chạy bộ'),
('basketball', 'Bóng rổ', 'Dành cho các sản phẩm liên quan đến bóng rổ'),
('soccer', 'Bóng đá', 'Dành cho các sản phẩm liên quan đến bóng đá'),
('tennis', 'Quần vợt', 'Dành cho các sản phẩm liên quan đến quần vợt'),
('training', 'Tập luyện', 'Dành cho các sản phẩm liên quan đến tập luyện'),
('casual', 'Thường ngày', 'Dành cho các sản phẩm giày thể thao phong cách thường ngày'),
('hiking', 'Leo núi', 'Dành cho các sản phẩm liên quan đến leo núi'),
('skateboarding', 'Trượt ván', 'Dành cho các sản phẩm liên quan đến trượt ván'),
('golf', 'Golf', 'Dành cho các sản phẩm liên quan đến golf'),
('sandals', 'Dép', 'Dành cho các sản phẩm dép và sandal');
--MATERIALS--
INSERT INTO materials (material_code, material_name, description) VALUES
('mat1', 'Vải cotton', 'Chất liệu cotton thông thường'),
('mat2', 'Da tổng hợp', 'Chất liệu da tổng hợp cao cấp'),
('mat3', 'Nylon', 'Chất liệu nhẹ và bền'),
('mat4', 'Polyester', 'Chất liệu chống nước'),
('mat5', 'Len', 'Chất liệu mềm mại'),
('mat6', 'Gỗ', 'Chất liệu tự nhiên'),
('mat7', 'Thép không gỉ', 'Chất liệu chống gỉ'),
('mat8', 'Nhựa', 'Chất liệu nhẹ và đa dạng màu sắc'),
('mat9', 'Sợi tổng hợp', 'Chất liệu linh hoạt và bền'),
('mat10', 'Lụa', 'Chất liệu xa xỉ và mềm mại');
--COLOR--
INSERT INTO colors (color_code, color_name, description) VALUES
('c1', 'Đen', 'Màu đen cổ điển và sang trọng'),
('c2', 'Trắng', 'Màu trắng tinh khôi và sáng'),
('c3', 'Xanh dương', 'Màu xanh dương đậm và bền'),
('c4', 'Đỏ', 'Màu đỏ nóng và cuốn hút'),
('c5', 'Xám', 'Màu xám trầm và lịch lãm'),
('c6', 'Nâu', 'Màu nâu ấm áp và đằm thắm'),
('c7', 'Xanh lá', 'Màu xanh lá tươi mới và năng động'),
('c8', 'Cam', 'Màu cam tươi sáng và nổi bật'),
('c9', 'Hồng', 'Màu hồng dịu dàng và nữ tính'),
('c10', 'Vàng', 'Màu vàng rực rỡ và nổi bật');
--SIZE--
INSERT INTO sizes (size_code, size_name, description) VALUES
('35', '35', 'Size 35'),
('36', '36', 'Size 36'),
('37', '37', 'Size 37'),
('38', '38', 'Size 38'),
('39', '39', 'Size 39'),
('40', '40', 'Size 40'),
('41', '41', 'Size 41'),
('42', '42', 'Size 42');
--COUPON--
INSERT INTO coupons (coupons_code, coupons_name, conditions, coupons_price, quantity, start_date, end_date, created_at, updated_at, is_active) VALUES
('coupon1', 'Giảm 10%', 0.0, 10.0, 100, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon2', 'Giảm 20%', 0.0, 20.0, 50, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon3', 'Giảm 30%', 0.0, 30.0, 30, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon4', 'Giảm 50%', 0.0, 50.0, 20, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon5', 'Giảm 70%', 0.0, 70.0, 10, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon6', 'Giảm 5%', 0.0, 5.0, 200, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon7', 'Giảm 15%', 0.0, 15.0, 80, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon8', 'Giảm 25%', 0.0, 25.0, 40, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon9', 'Giảm 35%', 0.0, 35.0, 25, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('coupon10', 'Giảm 45%', 0.0, 45.0, 15, '2024-09-01 00:00:00', '2024-09-30 23:59:59', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1);
--SOLE--
INSERT INTO soles (sole_code, sole_name, description) VALUES
('sole1', 'Đế cao su', 'Đế cao su chất lượng cao'),
('sole2', 'Đế da', 'Đế da tự nhiên'),
('sole3', 'Đế nhựa', 'Đế nhựa linh hoạt'),
('sole4', 'Đế cao su tổng hợp', 'Đế cao su tổng hợp chống trơn trượt'),
('sole5', 'Đế EVA', 'Đế EVA nhẹ và êm'),
('sole6', 'Đế cao su non-marking', 'Đế cao su không trơn trượt và không làm hỏng sàn nhà'),
('sole7', 'Đế cao su chống trượt', 'Đế cao su chống trượt tốt'),
('sole8', 'Đế cao su chịu mài mòn', 'Đế cao su bền chắc'),
('sole9', 'Đế cao su linh hoạt', 'Đế cao su linh hoạt dễ di chuyển'),
('sole10', 'Đế cao su chống nước', 'Đế cao su chống nước hiệu quả');
-STAFF--
INSERT INTO staffs (staff_code, full_name, gender, birthday, phone_number, address, email, password, role, created_at, updated_at, is_active) VALUES
('STAFF001', 'Nguyễn Văn A', 'Male', '1990-01-01', '0987654321', '123 Đường ABC, Quận XYZ, Thành phố HCM', 'staff001@example.com', 'password123', 'admin', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF002', 'Trần Thị B', 'Female', '1992-03-15', '0123456789', '456 Đường DEF, Quận UVW, Thành phố Hanoi', 'staff002@example.com', 'password456', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF003', 'Lê Văn C', 'Male', '1985-07-20', '0369871245', '789 Đường GHI, Quận RST, Thành phố Đà Nẵng', 'staff003@example.com', 'password789', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF004', 'Phạm Thị D', 'Female', '1988-05-10', '0765432198', '101 Đường KLM, Quận NOP, Thành phố HCM', 'staff004@example.com', 'passwordabc', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF005', 'Hoàng Văn E', 'Male', '1991-11-30', '0598764321', '202 Đường XYZ, Quận HIJ, Thành phố Hanoi', 'staff005@example.com', 'passwordxyz', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF006', 'Mai Thị F', 'Female', '1987-08-25', '0912345678', '303 Đường PQR, Quận STU, Thành phố Đà Nẵng', 'staff006@example.com', 'passworddef', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF007', 'Ngô Văn G', 'Male', '1993-04-05', '0701234567', '404 Đường LMN, Quận VWX, Thành phố HCM', 'staff007@example.com', 'passwordghi', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF008', 'Đặng Thị H', 'Female', '1986-12-12', '0998765432', '505 Đường UVW, Quận YZQ, Thành phố Hanoi', 'staff008@example.com', 'passwordjkl', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF009', 'Vũ Văn I', 'Male', '1989-09-18', '0887654321', '606 Đường RST, Quận ABC, Thành phố Đà Nẵng', 'staff009@example.com', 'passwordmno', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1),
('STAFF010', 'Lương Thị K', 'Female', '1990-06-08', '0661234567', '707 Đường GHJ, Quận EFK, Thành phố HCM', 'staff010@example.com', 'passwordpqr', 'staff', '2024-09-01 00:00:00', '2024-09-01 00:00:00', 1);
--CUSTOMER--
INSERT INTO customers (customer_code, full_name, gender, birthday, phone_number, address, email, password, created_at, updated_at) VALUES
('CUST001', 'Nguyễn Thị X', 'Female', '1995-02-20', '0987654321', '123 Đường ABC, Quận XYZ, Thành phố HCM', 'customer001@example.com', 'password123', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST002', 'Trần Văn Y', 'Male', '1990-04-15', '0123456789', '456 Đường DEF, Quận UVW, Thành phố Hanoi', 'customer002@example.com', 'password456', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST003', 'Lê Thị Z', 'Female', '1988-07-10', '0369871245', '789 Đường GHI, Quận RST, Thành phố Đà Nẵng', 'customer003@example.com', 'password789', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST004', 'Phạm Văn W', 'Male', '1992-05-25', '0765432198', '101 Đường KLM, Quận NOP, Thành phố HCM', 'customer004@example.com', 'passwordabc', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST005', 'Hoàng Thị U', 'Female', '1991-11-30', '0598764321', '202 Đường XYZ, Quận HIJ, Thành phố Hanoi', 'customer005@example.com', 'passwordxyz', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST006', 'Mai Văn T', 'Male', '1989-08-25', '0912345678', '303 Đường PQR, Quận STU, Thành phố Đà Nẵng', 'customer006@example.com', 'passworddef', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST007', 'Ngô Thị S', 'Female', '1987-04-05', '0701234567', '404 Đường LMN, Quận VWX, Thành phố HCM', 'customer007@example.com', 'passwordghi', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST008', 'Đặng Văn R', 'Male', '1993-12-12', '0998765432', '505 Đường UVW, Quận YZQ, Thành phố Hanoi', 'customer008@example.com', 'passwordjkl', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST009', 'Vũ Thị Q', 'Female', '1990-09-18', '0887654321', '606 Đường RST, Quận ABC, Thành phố Đà Nẵng', 'customer009@example.com', 'passwordmno', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('CUST010', 'Lương Văn P', 'Male', '1986-06-08', '0661234567', '707 Đường GHJ, Quận EFK, Thành phố HCM', 'customer010@example.com', 'passwordpqr', '2024-09-01 00:00:00', '2024-09-01 00:00:00');
--PRODUCT--
INSERT INTO products (product_code, product_name, id_brand, id_category, id_sole, id_material, created_at, updated_at) VALUES
('PROD001', 'Product 1', 1, 1, 1, 1, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD002', 'Product 2', 2, 2, 2, 2, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD003', 'Product 3', 3, 3, 3, 3, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD004', 'Product 4', 4, 4, 4, 4, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD005', 'Product 5', 5, 5, 5, 5, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD006', 'Product 6', 1, 2, 3, 4, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD007', 'Product 7', 2, 3, 4, 5, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD008', 'Product 8', 3, 4, 5, 1, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD009', 'Product 9', 4, 5, 1, 2, '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
('PROD010', 'Product 10', 5, 1, 2, 3, '2024-09-01 00:00:00', '2024-09-01 00:00:00');
--PRODUCTDETAIL--
INSERT INTO product_details (id_product, id_color, id_size, weight, price_old, price_new, quantity, status, created_at, updated_at) VALUES
(1, 1, 1, 0.5, 100.00, 90.00, 50, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(2, 2, 2, 0.6, 120.00, 110.00, 40, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(3, 3, 3, 0.7, 150.00, 140.00, 30, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(4, 4, 4, 0.8, 180.00, 170.00, 20, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(5, 5, 5, 0.9, 200.00, 190.00, 10, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(6, 1, 2, 0.55, 110.00, 100.00, 45, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(7, 2, 3, 0.65, 130.00, 120.00, 35, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(8, 3, 4, 0.75, 160.00, 150.00, 25, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(9, 4, 5, 0.85, 190.00, 180.00, 15, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00'),
(10, 5, 1, 0.95, 210.00, 200.00, 5, 'Available', '2024-09-01 00:00:00', '2024-09-01 00:00:00');