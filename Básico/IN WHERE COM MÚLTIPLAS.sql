--Where com múltiplas condições IN.

SELECT ProductName AS Produto, ColorName AS Cor FROM DimProduct
WHERE ColorName IN ('Silver', 'Black')


SELECT * FROM DimEmployee
WHERE FirstName IN ('Maria', 'Ari')