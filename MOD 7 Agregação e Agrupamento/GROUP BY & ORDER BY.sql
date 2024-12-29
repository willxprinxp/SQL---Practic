-- GROUP BY & ORDER BY

SELECT * FROM DimStore

SELECT
	StoreType,
	SUM(EmployeeCount) AS 'N� de funcion�rios'
FROM
	DimStore
GROUP BY
	StoreType
--Ordenando a tabela depois de agrupar
--Lembrando que temos que ordenar pela fun��o de agraga��o e n�o pela coluna
ORDER BY 
	SUM(EmployeeCount) DESC