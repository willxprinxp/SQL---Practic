-- RIGHT (OUTER) JOIN

-- Elementos do [Conjunto B (Direita)] + {[Intercessão (Meio)] do Conjunto B com [A (Esquerda)]}

SELECT * FROM produtos
SELECT * FROM subcategoria


SELECT 
	subcategoria.id_subcategoria,
	nome_subcategoria,
	id_produto,
	nome_produto
FROM
	produtos
RIGHT JOIN subcategoria
	ON produtos.id_subcategoria = subcategoria.id_subcategoria