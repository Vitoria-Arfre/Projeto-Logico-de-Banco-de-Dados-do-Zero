# Projeto-Logico-de-Banco-de-Dados-do-Zero da DIO


Sistema de Oficina Mecânica

Este projeto tem como objetivo modelar e implementar um banco de dados relacional para gerenciamento de uma oficina mecânica. O sistema contempla o cadastro de clientes, veículos, ordens de serviço, funcionários, peças e serviços realizados.

Modelo Lógico

O modelo lógico foi criado com base em um modelo ER previamente definido. As entidades principais são: Cliente, Veículo, Funcionário, Ordem de Serviço, Peça e Serviço. As relações entre elas foram mapeadas no modelo relacional que pode ser consultado no arquivo `schema.sql`.

Funcionalidades

- Registro de ordens de serviço por veículo
- Associação de peças e serviços a cada ordem
- Consulta de ordens por status
- Geração de relatórios com filtros, agrupamentos e ordenações

SQL Avançado

As queries implementadas incluem:
- Filtros com WHERE
- Ordenações com ORDER BY
- Atributos derivados (ex: duração do serviço)
- Junções entre múltiplas tabelas
- Agrupamentos com HAVING

Execução

Para rodar o projeto:
1. Execute o script `schema.sql` para criar as tabelas.
2. Execute `data.sql` para inserir dados de teste.
3. Execute as consultas em `queries.sql` para visualizar as funcionalidades.

