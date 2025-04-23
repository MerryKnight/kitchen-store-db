DELIMITER //

CREATE FUNCTION GetDetailCountForKitchen(KitchenID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE DetailCount INT DEFAULT 0;

    SELECT COUNT(*) 
    INTO DetailCount
    FROM KitchenDetail kd
    WHERE kd.Kitchen_ID = KitchenID;

    RETURN DetailCount;
END //

DELIMITER ;
