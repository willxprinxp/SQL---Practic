/* o SELECT DISTINCT mostra uma coluna com os valores �nicos de cada dado de cada coluna.
	ex: se h� uma venda de duas ma�as e tr�s bananas ser� mostrado:
		ma�� 
		banana
*/

SELECT TOP (100) * FROM FactSales

SELECT DISTINCT ProductKey FROM FactSales