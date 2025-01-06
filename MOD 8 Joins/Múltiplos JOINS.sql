-- Múltiplos JOINS
-- Relacionando tabelas usando uma tabela intermediadora.

SELECT ProductKey, ProductName, ProductSubcategoryKey FROM DimProduct
SELECT ProductSubCategoryKey, ProductSubcategoryName, ProductCategoryKey FROM DimProductSubcategory
SELECT ProductCategoryKey, ProductCategoryName FROM DimProductCategory

-- Queremos a Coluna ProductCategoryName na tabela de DimProduct

SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductCategoryName
FROM
	DimProduct
/*1º INNER JOIN Relacionando a Tabela 1 com a 2 pela ProductSubCategoryKey que ambas possuem.*/
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		/*2º INNER JOIN Relacionando a Tabela 2 com 3 pela ProductCategoryKey que ambas possuem.*/
		INNER JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey