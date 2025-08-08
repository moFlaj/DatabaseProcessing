SELECT SKU, SKU_Description, INVENTORY.WarehouseID, WarehouseCity, WarehouseState 
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID 
AND (WAREHOUSE.WarehouseCity <> 'Atlanta' 
AND WAREHOUSE.WarehouseCity <> 'Bangor' 
AND WAREHOUSE.WarehouseCity <> 'Chicago');