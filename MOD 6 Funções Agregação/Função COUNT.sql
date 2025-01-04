--Função COUNT

SELECT
	COUNT(*)
FROM
	DimProduct

SELECT
	COUNT(ProductName)
FROM
	DimProduct

--COUNT não conta valores nulos!
SELECT
	COUNT(Size)
FROM
	DimProduct