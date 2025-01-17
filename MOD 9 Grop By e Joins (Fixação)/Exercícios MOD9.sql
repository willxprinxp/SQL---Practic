-- Exercícios MOD 9 GROUP BY & INNER JOIN (Fixação)

--1
--A
SELECT
	ChannelName AS 'Nome do Canal',
	SUM(SalesQuantity) AS 'Total Vendido'
FROM
	FactSales
INNER JOIN DimChannel
	ON FactSales.channelKey = DimChannel.ChannelKey
GROUP BY ChannelName
ORDER BY SUM(SalesQuantity) DESC

