-- Exercícios Módulo 8 Joins

-- 1
SELECT TOP(100)* FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey


--2
SELECT * FROM DimProductCategory
SELECT * FROM DimProductSubcategory

SELECT
	DimProductCategory.ProductCategoryKey,
	ProductCategoryName,
	ProductCategoryDescription, --Inúlteiskkk
 	ProductSubcategoryKey,
	ProductSubcategoryName,
	ProductSubcategoryDescription --Inúlteiskkk
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
	

--3
SELECT * FROM DimStore
SELECT * FROM DimGeography

SELECT
	StoreKey,
	StoreName,
	EmployeeCount,
	ContinentName,
	RegionCountryName
FROM
	DimStore
LEFT JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey


--4
SELECT * FROM DimProduct
SELECT * FROM DimProductCategory

SELECT * FROM DimProductSubcategory

SELECT
	ProductKey,
	ProductName,
	ProductDescription,
	ProductSubcategoryName,
	ProductCategoryDescription
FROM
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	LEFT JOIN DimProductCategory
		ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey


--5
SELECT TOP(100)* FROM FactStrategyPlan --A
SELECT TOP(100)* FROM DimAccount

SELECT
	StrategyPlanKey,
	DateKey,
	AccountName,
	Amount
FROM
	FactStrategyPlan
INNER JOIN DimAccount
	ON FactStrategyPlan.AccountKey = DimAccount.AccountKey


--6
SELECT TOP(100)* FROM FactStrategyPlan 
SELECT * FROM DimScenario

SELECT
	StrategyPlanKey,
	DateKey,
	ScenarioName,
	Amount
FROM
	FactStrategyPlan
INNER JOIN DimScenario
	ON FactStrategyPlan.ScenarioKey = DimScenario.ScenarioKey


--7
SELECT TOP(100)* FROM DimProduct
SELECT * FROM DimProductSubcategory

SELECT
	ProductName,
	ProductSubcategoryName
FROM
	DimProductSubcategory
LEFT JOIN DimProduct
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductCategoryKey
WHERE ProductName IS NULL


--8
SELECT * FROM DimChannel
SELECT * FROM DimProduct

SELECT 
	DISTINCT BrandName,
	ChannelName
FROM
	DimProduct CROSS JOIN DimChannel
WHERE BrandName IN('Contoso', 'Fabrikam', 'Litware')


--9
SELECT * FROM DimPromotion
SELECT TOP(100)* FROM FactOnlineSales

SELECT TOP (1000)
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM
	FactOnlineSales
INNER JOIN DimPromotion
	ON FactOnlineSales.PromotionKey = DimPromotion.PromotionKey
WHERE PromotionName <> 'No Discount'
ORDER BY DateKey ASC


--10
SELECT TOP(1000)* FROM FactSales
SELECT * FROM DimChannel
SELECT * FROM DimStore
SELECT * FROM DimProduct

SELECT TOP(1000)
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM
	FactSales
LEFT JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
	LEFT JOIN DimStore
		ON FactSales.StoreKey = DimStore.StoreKey
		LEFT JOIN DimProduct
			ON FactSales.ProductKey = DimProduct.ProductKey
ORDER BY SalesAmount DESC