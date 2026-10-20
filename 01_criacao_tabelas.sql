BASE DE DADOS E TABELAS 
 
-- Criar o banco de dados do Projeto 2
CREATE DATABASE IF NOT EXISTS NovaStore_Clientes;
USE NovaStore_Clientes;

-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(50),
    regiao VARCHAR(50),
    data_cadastro DATE
);

-- Tabela de Transações / Pedidos
CREATE TABLE IF NOT EXISTS transacoes (
    id_transacao VARCHAR(10) PRIMARY KEY,
    id_cliente VARCHAR(10),
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);