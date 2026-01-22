
CREATE TABLE dbo.fact_churn_scoring (
    customerID           VARCHAR(50)   NOT NULL,

    gender               VARCHAR(20)   NULL,
    SeniorCitizen        INT           NULL,
    Partner              VARCHAR(10)   NULL,
    Dependents           VARCHAR(10)   NULL,

    tenure               INT           NULL,
    PhoneService         VARCHAR(10)   NULL,
    MultipleLines        VARCHAR(30)   NULL,
    InternetService      VARCHAR(30)   NULL,
    OnlineSecurity       VARCHAR(30)   NULL,
    OnlineBackup         VARCHAR(30)   NULL,
    DeviceProtection     VARCHAR(30)   NULL,
    TechSupport          VARCHAR(30)   NULL,
    StreamingTV          VARCHAR(30)   NULL,
    StreamingMovies      VARCHAR(30)   NULL,

    Contract             VARCHAR(30)   NULL,
    PaperlessBilling     VARCHAR(10)   NULL,
    PaymentMethod        VARCHAR(50)   NULL,

    MonthlyCharges       DECIMAL(10,2) NULL,
    TotalCharges         DECIMAL(12,2) NULL,

    Churn                INT           NULL,

    prob_churn           DECIMAL(7,6)  NOT NULL,
    pred_churn           INT           NOT NULL,

    run_date             DATETIME      NOT NULL,

    CONSTRAINT PK_fact_churn_scoring
        PRIMARY KEY (customerID, run_date)
);
