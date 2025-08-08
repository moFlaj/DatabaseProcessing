SELECT WarehouseID, SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING TotalItemsOnHandLT3 < 2
ORDER BY TotalItemsOnHandLT3 DESC;