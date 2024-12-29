--Usando o coamando AS para renomear colunas.

SELECT * FROM DimProduct


SELECT 
	ProductName,
	BrandName,
	ColorName
FROM
	DimProduct


SELECT
	ProductName AS 'Nome do Produto',
	BrandName AS Marca,
	ColorName AS Cor
FROM
	DimProduct