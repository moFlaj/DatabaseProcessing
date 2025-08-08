SELECT SKU, SKU_Description, INVENTORY.WarehouseID, WarehouseCity, WarehouseState 
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID = WAREHOUSE.WarehouseID AND 
(WarehouseCity = 'Atlanta' 
OR WarehouseCity = 'Bangor' 
OR WarehouseCity = 'Chicago'
);