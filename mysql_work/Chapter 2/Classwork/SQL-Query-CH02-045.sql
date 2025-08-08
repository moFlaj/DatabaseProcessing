SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE WarehouseID IN (
		SELECT WarehouseID 
        FROM WAREHOUSE
        WHERE Manager = 'Lucille Smith'
        );