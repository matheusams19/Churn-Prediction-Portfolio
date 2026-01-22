-- =====================================================
-- View: vw_churn_kpis_by_tenure
-- Descrição: KPIs de churn por tempo de permanência
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_kpis_by_tenure AS
SELECT
    CASE
        WHEN tenure < 6 THEN '0–5 meses'
        WHEN tenure < 12 THEN '6–11 meses'
        WHEN tenure < 24 THEN '12–23 meses'
        ELSE '24+ meses'
    END AS tenure_group,

    COUNT(*) AS total_customers,

    SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        AS churn_customers,

    CAST(
        1.0 * SUM(CASE WHEN pred_churn = 1 THEN 1 ELSE 0 END)
        / COUNT(*)
        AS DECIMAL(5,4)
    ) AS churn_rate
FROM dbo.vw_churn_scoring_latest
GROUP BY
    CASE
        WHEN tenure < 6 THEN '0–5 meses'
        WHEN tenure < 12 THEN '6–11 meses'
        WHEN tenure < 24 THEN '12–23 meses'
        ELSE '24+ meses'
    END;
