--Módulo 6 Exercícios

--1
SELECT
	SUM(SalesQuantity) AS 'Qtde Vendida',
	SUM(ReturnQuantity) AS 'Qtde Devolvida'
FROM 
	FactSales
WHERE channelKey = 1


--2
SELECT 
	AVG(YearlyIncome) AS 'Média Salárial'
FROM 
	DimCustomer
WHERE
	Occupation = 'Professional'


--3
-- A e C
SELECT 
	MAX(EmployeeCount) AS 'Maior nº de funcionários',
	MIN(EmployeeCount) AS 'Menor nº de funcionários'
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
	COUNT(Gender) AS 'Qtde Funcionário Masc'
FROM 
	DimEmployee
WHERE
	Gender = 'M'

SELECT
	COUNT(Gender) AS 'Qtde Funcionário FEM'
FROM
	DimEmployee
WHERE
	Gender = 'F'

--B
SELECT
	TOP(1) FirstName AS NOME,
	EmailAddress AS E_MAIL,
	HireDate AS 'Data de Contratação'
FROM
	DimEmployee
WHERE Gender = 'M' AND EndDate IS NULL
ORDER BY HireDate ASC

SELECT
	TOP(1) FirstName AS NOME,
	EmailAddress AS E_MAIL,
	HireDate AS 'Data de Contratação'
FROM
	DimEmployee
WHERE Gender = 'F' AND EndDate IS NULL
ORDER BY HireDate ASC


--5
SELECT 
	COUNT(DISTINCT ColorName) AS 'Nº de Cores',
	COUNT(DISTINCT BrandName) AS 'Nº de Marcas',
	COUNT(DISTINCT ClassName) AS 'Nº Classes de Produtos'
FROM
	DimProduct