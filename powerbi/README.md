## Power BI Dashboard

Esta pasta contém a camada analítica integrada no Power BI.

### KPIs
- Total Customers
- Average Predicted Churn Risk
- Customers at Risk
- Revenue at Risk

### Visuals
- Predicted Churn Rate by Contract
- Predicted Churn Rate by Tenure Group
- Predicted Churn Rate by Payment Method

## Dashboard Overview

![Dashboard Overview](powerbi/screenshots/dashboard_overview.png)

## Key KPIs

![KPIs](powerbi/screenshots/kpis_zoom.png)

### Filters
- Contract Type
- Tenure Group
- Payment Method
- Internet Service

### Notes
- All KPIs are sourced from SQL views in Azure SQL
- DAX measures are documented and versioned in `/powerbi/dax`
