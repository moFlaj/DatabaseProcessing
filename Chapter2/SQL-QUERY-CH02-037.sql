SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand > 2
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;