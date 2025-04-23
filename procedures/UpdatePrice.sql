DELIMITER //

CREATE PROCEDURE UpdateDetailPrice(
    IN DetailID INT,
    IN NewPrice DECIMAL(10, 2)
)
BEGIN
    -- Обновляем цену детали по ID
    UPDATE Detail
    SET Price = NewPrice
    WHERE Detail_ID = DetailID;
END //

DELIMITER ;
