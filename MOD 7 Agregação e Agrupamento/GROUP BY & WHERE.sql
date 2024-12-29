-- GROUP BY & WHERE

SELECT * FROM DimProduct

SELECT
	ColorName,
	COUNT(*) AS 'N� de Produtos'
FROM
	DimProduct
--Filtros no WHERE devem ser passados antes do agrupamento.
WHERE
	BrandName = 'Contoso'
GROUP BY 
	ColorName
ORDER BY 
	COUNT(*)