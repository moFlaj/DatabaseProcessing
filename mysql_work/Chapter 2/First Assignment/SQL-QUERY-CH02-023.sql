SELECT *
FROM INVENTORY
WHERE QuantityOnHand > 0
ORDER BY WarehouseID, QuantityOnHand Desc;