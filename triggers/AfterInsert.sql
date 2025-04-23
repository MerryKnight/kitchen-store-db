DELIMITER //

CREATE TRIGGER AfterInsertDetail
AFTER INSERT ON Detail
FOR EACH ROW
BEGIN
    INSERT INTO DetailLog (Detail_ID, Action_Time, Action)
    VALUES (NEW.Detail_ID, NOW(), 'INSERTED');
END //

DELIMITER ;
