--GROUP BY & HAVING (Filtro ap�s o agrupamento)
SELECT
	BrandName,
	COUNT(BrandName) AS 'Total Produtos por Marca'
FROM
	DimProduct
GROUP BY 
	BrandName
HAVING
	COUNT(BrandName) >= 200
ORDER BY
	COUNT(BrandName) DESC