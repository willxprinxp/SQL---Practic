/* SELECT TOP(N)* Seleciona n primeiras linhas
   SELECT TOP(%) PERCENT* Seleciona as primeiras linhas
   %/100 * Tamanho da Tabela = N linhas. */


SELECT TOP
	(15)*
FROM
	DimAccount


SELECT TOP
	(40) PERCENT*
FROM
	DimAccount

SELECT* FROM DimAccount