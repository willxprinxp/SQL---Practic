--ORDER BY E ORDENA��O MISTA

SELECT
	*
FROM
	DimProduct
ORDER BY UnitCost DESC


--Usando ordena��o mista "crit�rio de desempate."

SELECT
	TOP(100) ProductName, UnitCost, Weight
FROM
	DimProduct
ORDER BY UnitCost DESC, Weight DESC