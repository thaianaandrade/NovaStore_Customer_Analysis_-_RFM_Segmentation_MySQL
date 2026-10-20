CONSULTAS DE NEGÓCIOS E ANÁLISE DE COMPORTAMENTO

USE NovaStore_Clientes;

-- 1. Visão geral de compras por cliente (Clientes VIP)
SELECT 
    c.id_cliente, c.nome, c.regiao,
    COUNT(t.id_transacao) AS total_pedidos,
    SUM(t.valor_total) AS total_gasto,
    MAX(t.data_pedido) AS ultima_compra
FROM clientes c
INNER JOIN transacoes t ON c.id_cliente = t.id_cliente
GROUP BY c.id_cliente, c.nome, c.regiao
ORDER BY total_gasto DESC;

-- 2. Identificar clientes cadastrados que nunca compraram (Inativos)
SELECT 
    c.id_cliente, c.nome, c.regiao, c.data_cadastro,
    COUNT(t.id_transacao) AS total_pedidos
FROM clientes c
LEFT JOIN transacoes t ON c.id_cliente = t.id_cliente
GROUP BY c.id_cliente, c.nome, c.regiao, c.data_cadastro
HAVING total_pedidos = 0;

-- 3. Análise RFM Básica (Recência, Frequência e Valor)
SELECT 
    c.id_cliente, c.nome,
    COUNT(t.id_transacao) AS frequencia,
    SUM(t.valor_total) AS valor_monetario,
    MAX(t.data_pedido) AS ultima_compra,
    DATEDIFF('2025-12-31', MAX(t.data_pedido)) AS recencia_dias
FROM clientes c
INNER JOIN transacoes t ON c.id_cliente = t.id_cliente
GROUP BY c.id_cliente, c.nome
ORDER BY recencia_dias ASC;