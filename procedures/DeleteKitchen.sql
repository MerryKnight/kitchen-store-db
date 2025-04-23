DELIMITER //

CREATE PROCEDURE DeleteKitchen(
    IN KitchenID INT
)
BEGIN
    DELETE FROM KitchenDetail WHERE Kitchen_ID = KitchenID;
    DELETE FROM Kitchen WHERE Kitchen_ID = KitchenID;
END //

DELIMITER ;
