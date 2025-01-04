-- LEFT	(OUTER) JOIN

--Elementos do [Conjunto A (Esquerda)] + {[Intercessão (Meio)] do Conjunto A com [B (Direita) ]}

SELECT * FROM produtos
SELECT * FROM subcategoria


SELECT
	produtos.id_produto,
	produtos.nome_produto,
	produtos.id_subcategoria,
	subcategoria.nome_subcategoria
FROM
	produtos
LEFT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria
