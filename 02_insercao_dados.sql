DADOS TESTE 

USE NovaStore_Clientes;

-- Inserir Clientes
INSERT INTO clientes (id_cliente, nome, cidade, regiao, data_cadastro) VALUES
('C0001', 'Ana Carvalho', 'Cascais', 'Lisboa', '2024-05-05'),
('C0002', 'Daniel Ribeiro', 'Aveiro', 'Norte', '2024-02-14'),
('C0003', 'Bruno Silva', 'Lisboa', 'Lisboa', '2024-04-21'),
('C0004', 'Sofia Silva', 'Aveiro', 'Norte', '2024-04-11'),
('C0005', 'Vera Rodrigues', 'Sintra', 'Lisboa', '2024-08-17'),
('C0006', 'Ana Teixeira', 'Sintra', 'Lisboa', '2024-12-23'),
('C0007', 'Inês Ferreira', 'Leiria', 'Centro', '2024-06-21'),
('C0008', 'Nuno Santos', 'Vila Real', 'Norte', '2024-06-25');

-- Inserir Transações
INSERT INTO transacoes (id_transacao, id_cliente, data_pedido, valor_total) VALUES
('T1001', 'C0001', '2025-07-10', 3200.00),
('T1002', 'C0002', '2025-04-07', 350.00),
('T1003', 'C0001', '2025-01-28', 2800.00),
('T1004', 'C0003', '2025-09-06', 700.00),
('T1005', 'C0004', '2025-01-29', 2200.00),
('T1006', 'C0005', '2025-11-27', 2800.00),
('T1007', 'C0002', '2025-08-08', 4500.00),
('T1008', 'C0006', '2025-12-30', 700.00),
('T1009', 'C0007', '2025-08-23', 1500.00),
('T1010', 'C0001', '2025-11-28', 1700.00);