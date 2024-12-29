-- WHERE

/*Para acharmos o maior preço com o oque conhecemos antes do Where podemos usar TOP(N) e ORDER BY*/

SELECT
	TOP(1) UnitPrice
FROM
	DimProduct
ORDER BY UnitPrice DESC



--Mas e para descobrirmos, por exemplo, quantos produtos tem preço unitário maiores que 1000?
-- Com WHERE

SELECT
	ProductName AS 'Produto',
	UnitPrice AS 'Preço'
FROM
	DimProduct
WHERE UnitPrice >= 1000
