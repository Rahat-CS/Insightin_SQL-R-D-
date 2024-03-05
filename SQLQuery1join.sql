SELECT p.product_name, p.product_id,p.M_Fg
FROM dbo.de_learn2_Orders o
RIGHT JOIN dbo.de_learn2_Product p ON p.Order_id = o.Order_id
WHERE p.Order_id IS NULL;
