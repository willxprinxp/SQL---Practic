-- Tabela Fato X Tabela Dimens�o

--Tabela Fato � uma tabela onde os dados dentro dela representam movimenta��es/acontecimentos em determinado per�odo de tempo.
SELECT TOP(100)* FROM FactSales
-- Geralmente elas h� milhares de informa��es e possuem em sua composi��o colunas de ID as Chaves Estrangeiras.


--Tabela Dimens�o � uma tabela onde os dados dentro dela representam caracter�stica de um determinado elemento: funcion�rio, cliente, loja e etc.
SELECT * FROM DimProduct
-- Nessa tabela nenhum dos elementos principais ir� se repetir, � onde ser�o encontradas as Chaves Prim�rias.