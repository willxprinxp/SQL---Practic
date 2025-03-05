-- Exercícios MOD 9 GROUP BY & INNER JOIN (Fixação)

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
	CalendarMonthLabel AS 'Mês',
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
	ColorName AS 'COR',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ColorName
HAVING SUM(SalesQuantity) >= 3000000 --Filtrando a tabela que já foi agrupada.
ORDER BY SUM(SalesQuantity) DESC


--3
SELECT
	ProductCategoryName AS 'Categoria',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
	INNER JOIN DimProductSubcategory
		ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		INNER JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

GROUP BY ProductCategoryName


--4
--A
SELECT
	DimCustomer.CustomerKey,
	FirstName AS 'Nome',
	LastName AS 'Sobrenome',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY DimCustomer.CustomerKey, FirstName, LastName
ORDER BY SUM(SalesQuantity) DESC

--B
SELECT TOP (10)
	ProductName AS 'Produto',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactOnlineSales
INNER JOIN DimProduct
	ON FactOnlineSales.ProductKey = DimProduct.ProductKey
WHERE CustomerKey = '7665'
GROUP BY ProductName
ORDER BY SUM(SalesQuantity) DESC


--5

SELECT
	Gender AS Genero,
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
GROUP BY Gender
HAVING Gender IS NOT NULL
ORDER BY SUM(SalesQuantity) DESC


--6
SELECT
	CurrencyDescription AS Moeda,
	AVG(AverageRate) AS 'Taxa de Câmbio'
FROM
	DimCurrency
INNER JOIN FactExchangeRate
	ON FactExchangeRate.CurrencyKey = DimCurrency.CurrencyKey
GROUP BY CurrencyDescription
HAVING AVG(AverageRate) BETWEEN 10 AND 100

SELECT * FROM FactExchangeRate
SELECT * FROM DimCurrency


--7
SELECT 
	ScenarioName AS 'Cenário',
	SUM(Amount) AS Quantia
FROM
	DimScenario
INNER JOIN FactStrategyPlan
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey
WHERE ScenarioName IN ('Actual', 'Budget')
GROUP BY ScenarioName


--8
SELECT
	CalendarYearLabel AS 'ANO',
	SUM(Amount) AS 'Quantia'
FROM
	DimDate
INNER JOIN FactStrategyPlan
	ON FactStrategyPlan.Datekey = DimDate.Datekey
GROUP BY CalendarYearLabel

SELECT TOP(10)* FROM FactStrategyPlan 
SELECT * FROM DimDate