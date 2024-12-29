-- Exercícios Módulo 7

--1
SELECT * FROM FactSales

--A
SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesQuantity) AS 'Quantidade Vendida'
FROM
	FactSales
GROUP BY
	channelKey

--B
SELECT
	StoreKey AS 'ID Loja',
	SUM(SalesQuantity) AS 'Quantidade Vendida',
	SUM(ReturnQuantity) AS 'Quantidade Devolvida'
FROM
	FactSales
GROUP BY 
	StoreKey

--C
SELECT
	channelKey AS 'Canal de Vendas',
	SUM(SalesAmount) AS 'Faturamento Total'
FROM
	FactSales
WHERE 
	DateKey BETWEEN '20070101' AND '20071231'
GROUP BY 
	channelKey

--2A
SELECT
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	FactSales 
GROUP BY
	ProductKey
HAVING SUM(SalesAmount) > 5000000
ORDER BY SUM(SalesAmount) DESC

--2B
SELECT TOP(10)
	ProductKey AS 'ID do Produto',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	FactSales 
GROUP BY
	ProductKey
ORDER BY SUM(SalesAmount) DESC


--3
SELECT TOP (100)* FROM FactOnlineSales

--A
SELECT TOP(1)
	CustomerKey AS 'ID do Cliente',
	SUM(SalesQuantity) AS 'Maior qtde de compras'
FROM
	FactOnlineSales
GROUP BY
	CustomerKey
ORDER BY SUM(SalesQuantity) DESC

--B
SELECT TOP(3)
	ProductKey AS 'ID do Prod',
	SUM(SalesQuantity) AS 'Total Vendido p/Cliente A'
FROM
	FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY
	ProductKey
ORDER BY SUM(SalesQuantity) DESC


--4
SELECT* FROM  DimProduct

--A
SELECT
	BrandName as 'Marca',
	COUNT(ProductName) AS 'Qtde de Prod'
FROM
	DimProduct
GROUP BY BrandName
ORDER BY COUNT(ProductName) DESC

--B
SELECT
	ClassName AS Classe,
	AVG(UnitPrice) AS 'Média de Preço'
FROM
	DimProduct
GROUP BY	
	ClassName
ORDER BY AVG(UnitPrice) DESC

--C
SELECT
	ColorName AS COR,
	SUM(Weight) AS 'Peso Total'
FROM
	DimProduct
GROUP BY ColorName
ORDER BY SUM(Weight) DESC


--5
SELECT * FROM DimProduct

SELECT
	StockTypeName AS 'Tipo de Estoque',
	SUM(Weight) AS Peso
FROM
	DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC


--6
SELECT
	BrandName AS Marca,
	COUNT(DISTINCT ColorName) AS Cor
FROM
	DimProduct
GROUP BY BrandName
ORDER BY COUNT(DISTINCT ColorName) DESC
	

--7
SELECT * FROM DimCustomer

SELECT
	Gender AS Sexo,
	COUNT(Gender) AS 'Total de Pessoas',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Gender IS NOT NULL AND YearlyIncome IS NOT NULL
GROUP BY
	Gender

--8
SELECT
	Education AS 'Nível Escolar',
	SUM(CustomerKey) AS 'Qtde Clientes',
	AVG(YearlyIncome) AS 'Média Salarial'
FROM
	DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education
ORDER BY AVG(YearlyIncome) DESC