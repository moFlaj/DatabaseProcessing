SELECT SUM(QuantityOnHand) AS QuantityOnHandSum, AVG(QuantityOnHand) AS QuantityOnHandAvg, MIN(QuantityOnHand) AS QuantityOnHandMin,
MAX(QuantityOnHand) AS QuantityOnHandMax, COUNT(QuantityOnHand) AS QuantityOnHandCount
FROM INVENTORY;