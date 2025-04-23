DELIMITER //
CREATE TRIGGER BeforeDeleteKitchen
BEFORE DELETE ON Kitchen
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM KitchenDetail 
        WHERE Kitchen_ID = OLD.Kitchen_ID
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete kitchen with associated details.';
    END IF;
END //
