DELIMITER //

CREATE FUNCTION GetTotalPriceForKitchen(KitchenID INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE TotalPrice DECIMAL(10,2) DEFAULT 0;

    SELECT COALESCE(SUM(d.Price), 0) 
    INTO TotalPrice
    FROM Detail d
    JOIN KitchenDetail kd ON kd.Detail_ID = d.Detail_ID
    WHERE kd.Kitchen_ID = KitchenID;

    RETURN TotalPrice;
END //

DELIMITER ;
