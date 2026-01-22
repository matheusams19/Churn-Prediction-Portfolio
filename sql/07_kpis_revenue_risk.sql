-- =====================================================
-- View: vw_churn_kpis_revenue_risk
-- Descrição: Receita mensal em risco de churn
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_kpis_revenue_risk AS
SELECT
    SUM(MonthlyCharges) AS total_monthly_revenue,

    SUM(
        CASE WHEN pred_churn = 1
        THEN MonthlyCharges
        ELSE 0 END
    ) AS revenue_at_risk,

    CAST(
        1.0 * SUM(CASE WHEN pred_churn = 1 THEN MonthlyCharges ELSE 0 END)
        / NULLIF(SUM(MonthlyCharges), 0)
        AS DECIMAL(5,4)
    ) AS pct_revenue_at_risk
FROM dbo.vw_churn_scoring_latest;
