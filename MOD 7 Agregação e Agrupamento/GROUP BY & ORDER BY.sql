-- GROUP BY & ORDER BY

SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount) AS 'Nº de funcionários'
FROM
	DimStore
GROUP BY
	StoreType
--Ordenando a tabela depois de agrupar
--Lembrando que temos que ordenar pela função de agragação e não pela coluna
ORDER BY 
	SUM(EmployeeCount) DESC