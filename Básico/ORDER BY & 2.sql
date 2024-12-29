--ORDER BY E ORDENAÇÃO MISTA

SELECT
	*
FROM
	DimProduct
ORDER BY UnitCost DESC


--Usando ordenação mista "critério de desempate."

SELECT
	TOP(100) ProductName, UnitCost, Weight
FROM
	DimProduct
ORDER BY UnitCost DESC, Weight DESC