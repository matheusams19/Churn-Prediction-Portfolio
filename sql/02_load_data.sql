-- =====================================================
-- Script: 02_load_data.sql
-- Descrição: Carga de dados na tabela fato
-- Observação: Neste projeto, a ingestão é realizada
-- via script Python (pandas + SQLAlchemy).
-- =====================================================

-- Exemplo de validação pós-carga
SELECT
    COUNT(*) AS total_registros,
    MIN(run_date) AS primeira_execucao,
    MAX(run_date) AS ultima_execucao
FROM dbo.fact_churn_scoring;

-- Exemplo de checagem de duplicidade
SELECT
    customerID,
    COUNT(*) AS qtd_execucoes
FROM dbo.fact_churn_scoring
GROUP BY customerID
HAVING COUNT(*) > 1;
