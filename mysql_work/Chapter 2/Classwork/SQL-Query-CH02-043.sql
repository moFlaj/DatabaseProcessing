SELECT SKU, SKU_Description, INVENTORY.WarehouseID, WarehouseCity, WarehouseState 
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID AND WAREHOUSE.WarehouseCity NOT in ('Atlanta','Bangor', 'Chicago')