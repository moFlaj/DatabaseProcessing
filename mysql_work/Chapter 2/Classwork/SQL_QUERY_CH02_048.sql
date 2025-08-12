USE cape_codd;
SELECT WarehouseID, AVG(QuantityOnHand) AS QuantityOnHandAverage
FROM INVENTORY
WHERE WarehouseID IN (
    SELECT WarehouseID
    FROM WAREHOUSE
    WHERE Manager = 'Lucille Smith'
)
GROUP BY WarehouseID;
