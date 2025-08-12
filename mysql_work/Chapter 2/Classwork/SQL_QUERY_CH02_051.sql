SELECT WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState, Manager, SKU, SKU_Description, QuantityOnHand 
FROM INVENTORY JOIN WAREHOUSE
ON Manager = 'Lucille Smith' AND INVENTORY.WarehouseID = WAREHOUSE.WarehouseID