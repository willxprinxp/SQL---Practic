--Fun��o COUNT

SELECT
	COUNT(*)
FROM
	DimProduct

SELECT
	COUNT(ProductName)
FROM
	DimProduct

--COUNT n�o conta valores nulos!
SELECT
	COUNT(Size)
FROM
	DimProduct