-- Tabela Fato X Tabela Dimensão

--Tabela Fato é uma tabela onde os dados dentro dela representam movimentações/acontecimentos em determinado período de tempo.
SELECT TOP(100)* FROM FactSales
-- Geralmente elas há milhares de informações e possuem em sua composição colunas de ID as Chaves Estrangeiras.


--Tabela Dimensão é uma tabela onde os dados dentro dela representam característica de um determinado elemento: funcionário, cliente, loja e etc.
SELECT * FROM DimProduct
-- Nessa tabela nenhum dos elementos principais irá se repetir, é onde serão encontradas as Chaves Primárias.