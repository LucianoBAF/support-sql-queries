-- Description: Return a relationship of all clients and their total orders amount.

-- Output example: 
-- CLIENT_CODE CLIENT_NAME                               SUM(ORDERS.AMOUNT)
-- ---------- ---------------------------------------- --------------------------
-- A001       Subbarao                                                        200
-- A002       Mukesh                                                         3500
-- A003       Alex                                                           1000
-- A004       Ivan                                                           2100
-- A005       Anderson                                                       3100
-- A006       McDen                                                           600
-- A007       Ramasundar                                                      500
-- A008       Alford                                                         3300
-- A009       Benjamin                                                        100
-- A010       Santakumar                                                     3700
-- A011       Ravi Kumar                                                      900
-- A012       Lucida                                                          450

-- Query:
SELECT clients.client_code, clients.client_name,  SUM(orders.amount)
FROM clients
JOIN orders ON orders.client_code = clients.client_code
GROUP  BY clients.client_code, clients.client_name
ORDER  BY clients.client_code;
