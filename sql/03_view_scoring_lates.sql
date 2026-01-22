-- =====================================================
-- View: vw_churn_scoring_latest
-- Descrição: Último scoring por cliente (base para KPIs)
-- =====================================================

CREATE OR ALTER VIEW dbo.vw_churn_scoring_latest AS
WITH ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY customerID
            ORDER BY run_date DESC
        ) AS rn
    FROM dbo.fact_churn_scoring
)
SELECT
    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,
    tenure,
    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,
    Contract,
    PaperlessBilling,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn,
    prob_churn,
    pred_churn,
    run_date
FROM ranked
WHERE rn = 1;
