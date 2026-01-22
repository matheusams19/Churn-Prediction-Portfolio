-- =====================================================
-- View: vw_churn_kpis_by_contract
-- Descrição: KPIs de churn por tipo de contrato
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_kpis_by_contract AS
SELECT
    Contract,
    COUNT(*) AS total_customers,

    SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        AS churn_customers,

    CAST(
        1.0 * SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*)
        AS DECIMAL(5,4)
    ) AS churn_rate,

    CAST(
        AVG(CAST(prob_churn AS FLOAT))
        AS DECIMAL(5,4)
    ) AS avg_prob_churn
FROM dbo.vw_churn_scoring_latest
GROUP BY Contract;
