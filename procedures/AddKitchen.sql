DELIMITER //

CREATE PROCEDURE AddKitchenWithDetails(
    IN KitchenName VARCHAR(100),
    IN Document_TS VARCHAR(45),
    IN DetailID INT
)
BEGIN
    -- Вставляем новую кухню с указанной деталью
    INSERT INTO Kitchen (Name_Kitchen, Document_TS, Detail_ID)
    VALUES (KitchenName, Document_TS, DetailID);
END //

DELIMITER ;


