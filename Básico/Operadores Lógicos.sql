-- Operadores l�gicos
-- AND, OR, WHERE NOT

SELECT
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso' AND ColorName = 'White'


SELECT
	*
FROM
	DimProduct
WHERE 
	BrandName = 'Contoso' or BrandName = 'Litware'


SELECT
	*
FROM
	DimProduct
WHERE NOT
	BrandName = 'Contoso'