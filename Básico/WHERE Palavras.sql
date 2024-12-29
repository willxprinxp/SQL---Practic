-- Descobrindo quais marcas exsitem para depois pegarmos dados apenas de uma marca específica.
SELECT DISTINCT
	BrandName
FROM
	DimProduct

-- Pegando dados de uma marca específica com WHERE.
SELECT
	ProductName,
	BrandName,
	ColorName,
	UnitPrice
FROM DimProduct
WHERE BrandName = 'Fabrikam' and ColorName = 'red'