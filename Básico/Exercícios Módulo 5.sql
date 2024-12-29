-- Exercícios Módulo 5

--1
SELECT TOP(100)* FROM FactSales
ORDER BY SalesAmount DESC


--2
SELECT TOP(10)* FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC

--3
SELECT 
	ProductName AS Produto,
	Weight AS Peso
FROM 
	DimProduct
WHERE 
	Weight >= 100
ORDER BY
		Weight DESC


--4
SELECT
	StoreName AS Loja,
	OpenDate AS 'Data da Abertura',
	EmployeeCount AS 'Número de funcionários'
FROM
	DimStore
WHERE
	StoreType = 'Store' AND Status = 'ON'


--5
SELECT 
	ProductKey AS 'ID Produto',
	ProductName AS 'Produto',
	AvailableForSaleDate AS 'Data Disp. p/venda'
FROM 
	DimProduct
WHERE BrandName = 'Litware' AND ProductName LIKE '%Home Theater%' AND AvailableForSaleDate = '20090315'
-- Com formatos de data datetime, temos que passar a data sem separadores!


--6
SELECT * FROM DimStore
WHERE Status = 'Off'

--2ª forma de fazer
SELECT
	*
FROM
	DimStore
WHERE CloseDate IS NOT NULL


--7
SELECT
	*
FROM
	DimStore
WHERE
	EmployeeCount BETWEEN 21 AND 50


--8
SELECT
	ProductKey AS ID,
	ProductName AS NOME,
	UnitPrice AS PREÇO
FROM
	DimProduct
WHERE 
	ProductDescription LIKE '%LCD%'
ORDER BY UnitPrice DESC


--9
SELECT
	*
FROM
	DimProduct
WHERE
	ColorName IN ('Green','Orange','Black','Silver','Pink')
	AND BrandName IN ('Contoso','Litware','Fabrikam')


--10
	SELECT
		*
	FROM
		DimProduct
	WHERE
		BrandName = 'Contoso' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
		ORDER BY UnitPrice DESC