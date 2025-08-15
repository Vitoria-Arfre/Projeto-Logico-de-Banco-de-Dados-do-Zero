USE OficinaMecanica;

-- Clientes
INSERT INTO Cliente VALUES (1, 'João Silva', '11999999999', 'joao@email.com');
INSERT INTO Cliente VALUES (2, 'Maria Souza', '11988888888', 'maria@email.com');

-- Veículos
INSERT INTO Veiculo VALUES (1, 'ABC1234', 'Civic', 2015, 1);
INSERT INTO Veiculo VALUES (2, 'XYZ5678', 'Corolla', 2020, 2);

-- Funcionários
INSERT INTO Funcionario VALUES (1, 'Carlos Mendes', 'Mecânico');
INSERT INTO Funcionario VALUES (2, 'Fernanda Lima', 'Eletricista');

-- Ordens de Serviço
INSERT INTO OrdemServico VALUES (1, '2025-08-01', '2025-08-05', 1, 1, 'Concluído', 800.00);
INSERT INTO OrdemServico VALUES (2, '2025-08-02', NULL, 2, 2, 'Em andamento', 0.00);

-- Peças
INSERT INTO Peca VALUES (1, 'Filtro de Óleo', 50.00);
INSERT INTO Peca VALUES (2, 'Pneu Aro 16', 300.00);

-- Peças utilizadas
INSERT INTO OrdemPeca VALUES (1, 1, 1);
INSERT INTO OrdemPeca VALUES (1, 2, 2);

-- Serviços Realizados
INSERT INTO ServicoRealizado VALUES (1, 'Troca de óleo', 150.00, 1);
INSERT INTO ServicoRealizado VALUES (2, 'Alinhamento', 100.00, 1);

