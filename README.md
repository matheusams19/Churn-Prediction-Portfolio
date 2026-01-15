# Churn-Prediction-Portfolio
Churn prediction with Machine Learning, Azure SQL and Power BI
Este projeto tem como objetivo identificar clientes com maior risco de churn em um negócio de assinatura, utilizando técnicas de Ciência de Dados e Machine Learning.
Além da construção dos modelos preditivos, o projeto enfatiza interpretabilidade, integração com cloud (Azure SQL) e visualização executiva (Power BI), simulando um cenário corporativo real.

## Problema de Negócio

Em empresas baseadas em assinatura, o churn impacta diretamente a receita recorrente.
Dessa forma, o desafio é responder às seguintes perguntas:

- Quais clientes apresentam maior probabilidade de cancelamento?
- Quais fatores influenciam o churn?
- Como priorizar ações de retenção de forma eficiente?
- O foco do projeto é apoiar decisões de negócio, e não apenas maximizar métricas técnicas.

## Abordagem Analítica

O projeto foi desenvolvido seguindo um fluxo completo de Ciência de Dados:

- Análise Exploratória (EDA)
- Avaliação do desbalanceamento do churn
- Análise de variáveis-chave (tenure, contrato, cobrança mensal)
- Preparação dos Dados
- Tratamento de valores ausentes
- Padronização de variáveis
- Pipeline de pré-processamento (numéricas e categóricas)
- Modelagem Preditiva
- Modelo baseline: Regressão Logística
- Modelo robusto: Random Forest
- Avaliação com métricas adequadas ao desbalanceamento (Recall, ROC-AUC)
- Explicabilidade
- Importância das variáveis
- Análise global com SHAP para interpretação do modelo
- Entrega para Negócio
- Exportação do scoring em CSV
- Persistência em banco de dados na nuvem (Azure SQL Database)
- Consumo via Power BI para visualização executiva

## 🧩 Arquitetura da Solução

O projeto foi estruturado em camadas, simulando um fluxo real de apoio à decisão
em um ambiente corporativo, desde a análise dos dados até a visualização executiva.

### Visão Geral

┌───────────────────────────────┐
│        Data Science Layer     │
│                               │
│  • Jupyter Notebook (Python)  │
│  • EDA e Feature Engineering  │
│  • Modelagem (ML)             │
│  • Explicabilidade (SHAP)     │
└───────────────┬───────────────┘
                │
                ▼
┌───────────────────────────────┐
│        Persistence Layer      │
│                               │
│  • Exportação de Scoring      │
│  • Azure SQL Database (PaaS)  │
│  • Tabelas dimensionais       │
└───────────────┬───────────────┘
                │
                ▼
┌───────────────────────────────┐
│     Analytics & BI Layer      │
│                               │
│  • Power BI                  │
│  • Dashboards executivos     │
│  • Segmentação por risco     │
└───────────────────────────────┘



## Tecnologias Utilizadas

Python (Pandas, NumPy, Scikit-learn)

Machine Learning (Logistic Regression, Random Forest)

Explicabilidade (SHAP)

Cloud: Azure SQL Database

Visualização: Power BI

Ambiente: Jupyter Notebook + VS Code

Versionamento: Git/GitHub

## 📁 Estrutura do Repositório

churn-portfolio/
│
├── notebooks/
│   └── 01_churn_analysis.ipynb
│
├── data/
│   └── README.md          # descrição dos dados (sem CSV sensível)
│
├── sql/
│   └── README.md          # scripts e validações SQL
│
├── dashboard/
│   └── README.md          # descrição do dashboard Power BI
│
├── requirements.txt
└── README.m

## Resultados Principais

Identificação clara de perfis com alto risco de churn

Forte relação entre churn e:

- Baixo tempo de permanência (tenure)
- Contratos mensais
- Maior cobrança mensal

O modelo Random Forest apresentou melhor desempenho em relação ao baseline

Técnicas de explicabilidade permitiram traduzir previsões em insights acionáveis

O modelo atua como ferramenta de priorização, auxiliando estratégias de retenção.

## Próximos Passos

- Otimização de hiperparâmetros
- Ajuste de threshold para maximizar recall de churn
- Criação de métricas orientadas à ação (lift, recall@k)
- Automatização de refresh no Power BI
- Evolução para múltiplas execuções do modelo (histórico de scoring)

## Observações

- Dados sensíveis e credenciais não são versionados neste repositório
- Conexões com Azure SQL utilizam variáveis de ambiente
- O CSV de scoring é gerado dinamicamente via notebook

## Autor

Projeto desenvolvido para fins de portfólio em Ciência de Dados, com foco em aplicação prática, interpretação de resultados e integração com ferramentas corporativas.
