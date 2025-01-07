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
