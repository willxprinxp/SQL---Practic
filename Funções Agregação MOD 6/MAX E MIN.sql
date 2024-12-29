-- Funções MAX e MIN

SELECT
	MAX(UnitPrice) AS 'Maior Preço Unidade',
	MIN(UnitPrice) AS 'Menor Preço Unidade'
FROM
	DimProduct