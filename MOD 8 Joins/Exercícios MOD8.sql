-- Exerc�cios M�dulo 8 Joins

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
	ProductCategoryDescription, --In�lteiskkk
 	ProductSubcategoryKey,
	ProductSubcategoryName,
	ProductSubcategoryDescription --In�lteiskkk
FROM
	DimProductSubcategory
LEFT JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
	