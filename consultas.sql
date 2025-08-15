USE OficinaMecanica;

-- Consultas
-- recuperação simples
SELECT nome, email FROM Cliente;

-- filtro where
SELECT *FROM OrdemServico WHERE status = "Concluido";

-- atributp derivado (tempo de servio)

SELECT 
	id_ordem,
    DATEDIFF(data_saida, data_entrada) AS dias_para_conclusao
FROM OrdemServico
WHERE data_saida IS NOT NULL;


-- ordenação
SELECT * FROM Funcionario ORDER BY nome ASC;

-- grupo com having
SELECT 
	id_funcionario,
    COUNT(*) AS total_ordens,
    SUM(valor_total) AS soma_valores
FROM OrdemServico
GROUP BY id_funcionario
HAVING SUM(valor_total) > 500;

-- juncao entre tabelas
SELECT
	c.nome AS nome_cliente,
    v.placa,
    v.modelo,
    v.ano
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.id_cliente;


-- juncao com pecas utilizadas em ordens
SELECT
	os.id_ordem,
    p.nome AS peca,
    op.quantidade,
    (p.preco_unitario * op.quantidade) AS custo_total_peca
FROM OrdemServico os
JOIN OrdemPeca op ON os.id_ordem = op.id_ordem
JOIN Peca p ON op.id_peca = p.id_peca;

-- servicos realizados  com preco acima da media
SELECT * FROM ServicoRealizado
WHERE preco > (SELECT AVG(preco) FROM ServicoRealizado);


