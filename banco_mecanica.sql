CREATE DATABASE OficinaMecanica;
USE OficinaMecanica;

CREATE TABLE Cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Veiculo (
	id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50)
);

CREATE TABLE OrdemServico (
	id_ordem INT AUTO_INCREMENT PRIMARY KEY,
    data_entrada DATE NOT NULL,
    data_saida DATE,
    id_veiculo INT NOT NULL,
    id_funcionario INT NOT NULL,
    status VARCHAR(30),
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Peca (
	id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE OrdemPeca (
	id_ordem INT,
    id_peca INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_ordem, id_peca),
    FOREIGN KEY (id_ordem) REFERENCES OrdemServico(id_ordem),
    FOREIGN KEY (id_peca) REFERENCES Peca(id_peca)
);


CREATE TABLE ServicoRealizado(
	id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    id_ordem INT NOT NULL,
    FOREIGN KEY (id_ordem) REFERENCES OrdemServico(id_ordem)
    );

