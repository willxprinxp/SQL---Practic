--Função SUM

SELECT 
	TOP(100)*
FROM
	FactSales

SELECT 
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM
	FactSales