SET GLOBAL event_scheduler = ON;
# Event update status coupons when end_date < Now()
DELIMITER //
CREATE EVENT update_coupons_status_event 
ON SCHEDULE EVERY 1 SECOND 
DO 
BEGIN 
	UPDATE coupons SET is_active = 0 
	WHERE end_date < NOW() AND is_active = 1;
END //
DELIMITER ;
# Event update status sales when end_date < Now()
DELIMITER //
CREATE EVENT update_sale_status_event 
ON SCHEDULE EVERY 1 SECOND 
DO 
BEGIN 
	UPDATE sales SET is_active = 0
	WHERE end_date < NOW() AND is_active = 1;
END //
DELIMITER ;
#Trigger update history sale set is_active when sale update
DELIMITER //
CREATE TRIGGER update_history_sale_trigger 
AFTER UPDATE ON sales 
FOR EACH ROW 
BEGIN 
	IF NEW.is_active = 0 THEN 
		UPDATE history_sales SET is_active = 0 
		WHERE id_sale = NEW.id; 
	END IF; 
END //
DELIMITER ;
#Trigger update product details set price_new when history_sales update
DELIMITER //
CREATE TRIGGER update_product_details_trigger 
AFTER UPDATE ON history_sales 
FOR EACH ROW 
BEGIN 
	IF NEW.is_active = 1 THEN 
		UPDATE product_details SET price_new = price_old * (
			SELECT percent FROM sales WHERE id = NEW.id_sale
		)
		WHERE id = NEW.id_product_details;
	ELSEIF NEW.is_active = 0 THEN 
		UPDATE product_details SET price_new = price_old 
		WHERE id = NEW.id_product_details;
	END IF;
END //
DELIMITER ;
#Trigger update product details set status when product details update
DELIMITER //
CREATE TRIGGER update_product_details_status_trigger 
AFTER UPDATE ON product_details 
FOR EACH ROW 
BEGIN 
	IF NEW.quantity = 0 THEN 
		UPDATE product_details SET status = 'Hết hàng' 
		WHERE id = NEW.id;
	ELSEIF NEW.quantity <> 0 THEN 
		UPDATE product_details SET STATUS = 'Còn hàng' 
		WHERE id = NEW.id;
	END IF;
END //
DELIMITER ;