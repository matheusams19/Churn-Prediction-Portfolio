-- =====================================================
-- View: vw_churn_kpis_general
-- Descrição: KPIs gerais de churn (executivo)
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_kpis_general AS
SELECT
    COUNT(*) AS total_customers,

    SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        AS predicted_churn_customers,

    CAST(
        1.0 * SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*)
        AS DECIMAL(5,4)
    ) AS predicted_churn_rate,

    CAST(
        AVG(CAST(prob_churn AS FLOAT))
        AS DECIMAL(5,4)
    ) AS avg_churn_probability,

    MAX(run_date) AS last_scoring_date
FROM dbo.vw_churn_scoring_latest;
