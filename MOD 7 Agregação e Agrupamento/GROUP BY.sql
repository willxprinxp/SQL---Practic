--Group By

SELECT
	BrandName AS Marca,
	COUNT(*) AS 'Qtde Total'
FROM
	DimProduct
GROUP BY BrandName


SELECT
	StoreType AS 'Tipo de Loja',
	SUM(EmployeeCount) AS 'Qtde Funcionários'
FROM
	DimStore
GROUP BY StoreType


SELECT
	BrandName AS Marca,
	AVG(UnitCost) AS 'Média de Custo'
FROM
	DimProduct
GROUP BY BrandName


SELECT 
	ClassName AS Classe,
	MAX(UnitPrice) AS 'Preço Máximo'
FROM
	DimProduct
GROUP BY ClassName