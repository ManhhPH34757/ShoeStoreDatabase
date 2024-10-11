/* Table Brands */
INSERT INTO brands (brand_code, brand_name, description) 
VALUES ('BR001', 'Nike', 'Thương hiệu thể thao hàng đầu chuyên sản xuất giày chạy bộ');

INSERT INTO brands (brand_code, brand_name, description) 
VALUES ('BR002', 'Adidas', 'Nổi tiếng với giày tennis hiệu suất cao');

INSERT INTO brands (brand_code, brand_name, description) 
VALUES ('BR003', 'Puma', 'Cung cấp giày sneaker phong cách cho nhiều môn thể thao');

INSERT INTO brands (brand_code, brand_name, description) 
VALUES ('BR004', 'Reebok', 'Nổi tiếng với giày tập luyện và thể hình');

INSERT INTO brands (brand_code, brand_name, description) 
VALUES ('BR005', 'New Balance', 'Giày chạy bộ chất lượng cao cho vận động viên');

/* Table Categories */
INSERT INTO categories (category_code, category_name, description) 
VALUES ('CAT001', 'Giày chạy bộ', 'Thiết kế dành cho chạy và đi bộ');

INSERT INTO categories (category_code, category_name, description) 
VALUES ('CAT002', 'Giày tennis', 'Giày được xây dựng cho sự ổn định và di chuyển nhanh trong tennis');

INSERT INTO categories (category_code, category_name, description) 
VALUES ('CAT003', 'Giày bóng rổ', 'Giày cao cổ hỗ trợ mắt cá chân và chơi bóng rổ');

INSERT INTO categories (category_code, category_name, description) 
VALUES ('CAT004', 'Giày CrossFit', 'Giày đa năng cho phòng gym và tập CrossFit');

INSERT INTO categories (category_code, category_name, description) 
VALUES ('CAT005', 'Giày đi bộ', 'Giày thoải mái cho việc đi bộ và tập luyện nhẹ');

/* Table Materials */
INSERT INTO materials (material_code, material_name, description) 
VALUES ('MAT001', 'Da', 'Chất liệu da bền cho giày');

INSERT INTO materials (material_code, material_name, description) 
VALUES ('MAT002', 'Lưới', 'Chất liệu lưới thông thoáng');

INSERT INTO materials (material_code, material_name, description) 
VALUES ('MAT003', 'Tổng hợp', 'Chất liệu tổng hợp nhẹ');

INSERT INTO materials (material_code, material_name, description) 
VALUES ('MAT004', 'Cao su', 'Đế cao su để có độ bám tốt');

INSERT INTO materials (material_code, material_name, description) 
VALUES ('MAT005', 'Mút', 'Đệm mút cho sự thoải mái và giảm chấn');

/* Table Soles */
INSERT INTO soles (sole_code, sole_name, description) 
VALUES ('SOL001', 'Đế cao su', 'Đế cao su bền và linh hoạt');

INSERT INTO soles (sole_code, sole_name, description) 
VALUES ('SOL002', 'Đế mút', 'Đế mút mềm cho sự thoải mái tối đa');

INSERT INTO soles (sole_code, sole_name, description) 
VALUES ('SOL003', 'Đế gel', 'Đệm gel giúp hấp thụ sốc');

INSERT INTO soles (sole_code, sole_name, description) 
VALUES ('SOL004', 'Đế EVA', 'Đế EVA nhẹ');

INSERT INTO soles (sole_code, sole_name, description) 
VALUES ('SOL005', 'Đế da', 'Đế da truyền thống cho giày cao cấp');

/* Table Colors */
INSERT INTO colors (color_code, color_name, description) VALUES ('C001', 'Red', 'Bright red color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C002', 'Green', 'Fresh green color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C003', 'Blue', 'Calm blue color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C004', 'Yellow', 'Vibrant yellow color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C005', 'Black', 'Deep black color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C006', 'White', 'Pure white color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C007', 'Purple', 'Royal purple color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C008', 'Orange', 'Bold orange color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C009', 'Pink', 'Soft pink color');
INSERT INTO colors (color_code, color_name, description) VALUES ('C010', 'Gray', 'Neutral gray color');

/* Table Sizes */

INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S30', 'Size 30', 'Size này phù hợp với chiều dài bàn chân khoảng 18-18.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S31', 'Size 31', 'Size này phù hợp với chiều dài bàn chân khoảng 18.5-19 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S32', 'Size 32', 'Size này phù hợp với chiều dài bàn chân khoảng 19-19.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S33', 'Size 33', 'Size này phù hợp với chiều dài bàn chân khoảng 19.5-20 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S34', 'Size 34', 'Size này phù hợp với chiều dài bàn chân khoảng 20-20.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S35', 'Size 35', 'Size này phù hợp với chiều dài bàn chân khoảng 20.5-21 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S36', 'Size 36', 'Size này phù hợp với chiều dài bàn chân khoảng 21-21.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S37', 'Size 37', 'Size này phù hợp với chiều dài bàn chân khoảng 21.5-22 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S38', 'Size 38', 'Size này phù hợp với chiều dài bàn chân khoảng 22-22.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S39', 'Size 39', 'Size này phù hợp với chiều dài bàn chân khoảng 22.5-23 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S40', 'Size 40', 'Size này phù hợp với chiều dài bàn chân khoảng 23-23.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S41', 'Size 41', 'Size này phù hợp với chiều dài bàn chân khoảng 23.5-24 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S42', 'Size 42', 'Size này phù hợp với chiều dài bàn chân khoảng 24-24.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S43', 'Size 43', 'Size này phù hợp với chiều dài bàn chân khoảng 24.5-25 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S44', 'Size 44', 'Size này phù hợp với chiều dài bàn chân khoảng 25-25.5 cm');
INSERT INTO sizes (id, size_code, size_name, description) VALUES (UUID(), 'S45', 'Size 45', 'Size này phù hợp với chiều dài bàn chân khoảng 25.5-26 cm');


