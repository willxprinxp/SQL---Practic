--M�dulo 6 Exerc�cios

--1
SELECT
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM 
	FactSales
WHERE channelKey = 1


--2
SELECT 
	AVG(YearlyIncome) AS 'M�dia Sal�rial'
FROM 
	DimCustomer
WHERE
	Occupation = 'Professional'


--3
-- A e C
SELECT 
	MAX(EmployeeCount) AS 'Maior n� de funcion�rios',
	MIN(EmployeeCount) AS 'Menor n� de funcion�rios'
FROM 
	DimStore

--B e D
SELECT 
	StoreName 
FROM 
	DimStore 
WHERE 
	EmployeeCount IN (325, 7)


--4
--A
SELECT
	COUNT(Gender) AS 'Qtde Funcion�rio Masc'
FROM 
	DimEmployee
WHERE
	Gender = 'M'

SELECT
	COUNT(Gender) AS 'Qtde Funcion�rio FEM'
FROM
	DimEmployee
WHERE
	Gender = 'F'

--B
SELECT
	TOP(1) FirstName AS NOME,
	EmailAddress AS E_MAIL,
	HireDate AS 'Data de Contrata��o'
FROM
	DimEmployee
WHERE Gender = 'M' AND EndDate IS NULL
ORDER BY HireDate ASC

SELECT
	TOP(1) FirstName AS NOME,
	EmailAddress AS E_MAIL,
	HireDate AS 'Data de Contrata��o'
FROM
	DimEmployee
WHERE Gender = 'F' AND EndDate IS NULL
ORDER BY HireDate ASC


--5
SELECT 
	COUNT(DISTINCT ColorName) AS 'N� de Cores',
	COUNT(DISTINCT BrandName) AS 'N� de Marcas',
	COUNT(DISTINCT ClassName) AS 'N� Classes de Produtos'
FROM
	DimProduct