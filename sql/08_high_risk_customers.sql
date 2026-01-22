-- =====================================================
-- View: vw_churn_high_risk_customers
-- Descrição: Clientes com alto risco de churn
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_high_risk_customers AS
SELECT
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    prob_churn,
    run_date
FROM dbo.vw_churn_scoring_latest
WHERE prob_churn >= 0.70;
