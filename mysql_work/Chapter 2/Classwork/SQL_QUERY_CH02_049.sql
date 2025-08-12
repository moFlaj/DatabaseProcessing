USE cape_codd;
SELECT WAREHOUSE.WarehouseID, AVG(QuantityOnHand) AS QuantityOnHandAverage
FROM INVENTORY, WAREHOUSE
WHERE Manager = 'Lucille Smith' AND INVENTORY.WarehouseID = WAREHOUSE.WarehouseID
GROUP BY WarehouseID;
