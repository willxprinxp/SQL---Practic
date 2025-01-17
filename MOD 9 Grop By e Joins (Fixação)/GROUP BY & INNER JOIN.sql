-- GROUP BY & JOINS

-- GROUP BY -> Cria os agrupamentos 
-- JOIN -> Cria rela��es entre as tabelas

--a. Crie um agrupamento mostrando um total de vendas (Sales Quantity) por ano (Calendar Year).
--b. Considere apenas o m�s (CalendarMonthLabel) de 'January'.
--c. Na tabela resultante, mostre apenas os anos com um total de vendas maior ou igual a 1.200.000.

SELECT TOP (100)* FROM FactSales
SELECT * FROM DimDate

SELECT
	CalendarYear AS 'Ano',
	SUM(SalesQuantity) AS 'Qtde Vendida'
FROM
	FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
WHERE CalendarMonthLabel = 'January'
GROUP BY CalendarYear
HAVING SUM(SalesQuantity) >= 1200000