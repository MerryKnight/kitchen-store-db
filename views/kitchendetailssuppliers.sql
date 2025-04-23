CREATE VIEW KitchenDetailsSuppliers AS
SELECT 
    k.Kitchen_ID,
    k.Name_Kitchen,
    d.Name_Detail,
    d.Price AS Detail_Price,
    s.Name_Supplier,
    s.Contact_ID
FROM Kitchen k
JOIN KitchenDetail kd ON k.Kitchen_ID = kd.Kitchen_ID
JOIN Detail d ON kd.Detail_ID = d.Detail_ID
JOIN Supplier s ON d.Supplier_ID = s.Supplier_ID;