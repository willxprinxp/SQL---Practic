-- Exerc�cios MOD 9 GROUP BY & INNER JOIN (Fixa��o)

--1
--A
SELECT
	ChannelName AS 'Nome do Canal',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

--B
SELECT
	StoreName AS 'Nome da Loja',
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM
	DimStore
INNER JOIN FactSales
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName
ORDER BY StoreName

--C
SELECT
	CalendarYear AS 'Ano',
	CalendarMonthLabel AS 'M�s',
	SUM(SalesAmount) AS 'Total Vendido'
FROM
	DimDate
INNER JOIN FactSales
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarYear, CalendarMonthLabel, CalendarMonth
ORDER BY CalendarMonth ASC


--2
--A
SELECT
	ColorName AS 'COR',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
ORDER BY SUM(SalesQuantity) DESC

--B
SELECT
	ColorName,
	SUM(SalesAmount)
FROM
	DimProduct
INNER JOIN FactSales
	ON FactSales.ProductKey = DimProduct.ProductKey
WHERE SalesAmount >= 300000
GROUP BY ColorName

SELECT TOP (100)* FROM FactSales