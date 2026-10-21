# NovaStore_Customer_Analysis_-_RFM_Segmentation_MySQL
# 🗄️ Projeto 2: NovaStore Customer Analysis & RFM Segmentation (MySQL)

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Database Design](https://img.shields.io/badge/Database_Design-Relational-blue?style=for-the-badge)

---

## 📌 Visão Geral do Projeto
Este projeto faz parte do *Portfólio de Análise de Dados da NovaStore*, focando-se na *modelação de bases de dados relacionais*, *integridade referencial* e *consultas avançadas em SQL* para análise de comportamento do consumidor.

A partir dos dados de clientes e pedidos, foram construídas consultas para extrair métricas de retenção, identificar clientes inativos e calcular a matriz *RFM (Recência, Frequência e Valor Monetário)* para apoiar decisões de marketing e CRM.

---

## 🎯 Objetivos de Negócio
* *Modelação Relacional:* Estruturar tabelas normalizadas com chaves primárias e estrangeiras.
* *Análise de Clientes VIP:* Identificar os clientes com maior valor acumulado de compras.
* *Diagnóstico de Inatividade:* Mapear clientes registados que ainda não realizaram compras.
* *Análise RFM:* Mensurar o tempo desde a última compra (Recência), total de transações (Frequência) e valor total gasto (Monetário).

---

## 📐 Estrutura do Banco de Dados (ERD Concept)
O modelo relacional é composto por duas tabelas principais interligadas:

* *clientes (Tabela Dimensão):* id_cliente (PK), nome, cidade, regiao, data_cadastro.
* *transacoes (Tabela Fato):* id_transacao (PK), id_cliente (FK), data_pedido, valor_total.

---

## 📊 Principais Consultas e Insights de Negócio

### 1. Clientes VIP (Top Compradores)
* *Consulta:* Agrupamento por cliente e soma de valores transacionados.
* *Insight:* A cliente *Ana Carvalho (C0001)* destaca-se com faturamento acumulado de *7.700,00 €* em 3 pedidos, seguida por *Daniel Ribeiro (C0002)* com *4.850,00 €*.

### 2. Análise RFM (Recência, Frequência, Monetário)
* *Consulta:* Cálculo de DATEDIFF entre a data atual de referência e a última compra realizada pelo cliente.
* *Insight:* Permite classificar automaticamente clientes em segmentos de retenção (ex: "Em Risco", "Campeões", "Leais").
