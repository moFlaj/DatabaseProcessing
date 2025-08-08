SELECT CONCAT(SKU_Description, ' is located in ', WarehouseCity) AS ItemLocation
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID