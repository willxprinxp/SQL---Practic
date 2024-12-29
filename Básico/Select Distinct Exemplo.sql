/* o SELECT DISTINCT mostra uma coluna com os valores únicos de cada dado de cada coluna.
	ex: se há uma venda de duas maças e três bananas será mostrado:
		maçã 
		banana
*/

SELECT TOP (100) * FROM FactSales

SELECT DISTINCT ProductKey FROM FactSales