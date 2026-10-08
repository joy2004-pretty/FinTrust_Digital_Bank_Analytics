# FinTrust Digital Bank – Data Analytics Project

A 4-week FinTrust Digital Bank data analytics project completed as part of the **AnalystLab Africa Experience Lab Internship Programme**.

This repository documents my Data Analytics contribution to the:

**FinTrust Digital Bank – Financial Intelligence & Digital Banking Support Solution**

The project progressed through four stages:

- **Week 1 – Understand & Plan**
- **Week 2 – Analyse & Prepare**
- **Week 3 – Develop & Integrate**
- **Week 4 – Test, Refine & Present**

---

## Project Overview

FinTrust Digital Bank is a fictional digital banking organisation used for an educational data analytics project.

The project focused on transforming synthetic customer and transaction data into a structured business intelligence solution using:

- SQL
- Python
- Power BI
- Data validation
- Business analysis
- Dashboard development

The final solution was designed to help management understand:

- Customer behaviour
- Transaction performance
- Banking channel activity
- Customer segment performance
- Transaction failure patterns
- Risk-review behaviour
- Operational trends

---

## Business Problem

FinTrust has customer and transaction data but requires stronger analytical capabilities to transform this information into meaningful business intelligence.

The project therefore focused on improving visibility into:

- Customer behaviour
- Transaction trends
- Banking channel performance
- Transaction success and failure patterns
- Customer segment performance
- Risk-review patterns
- Operational performance
- Management decision-making

---

## Project Objective

The overall project objective was to develop a reliable and decision-oriented analytical solution that helps FinTrust understand customer and transaction behaviour and identify important operational patterns.

Within the **Data Analytics Track**, my responsibilities included:

- Data exploration
- Data cleaning
- Data validation
- SQL analysis
- Python exploratory analysis
- KPI development
- Customer analysis
- Transaction analysis
- Power BI dashboard development
- Cross-tool validation
- Business insight generation
- Management recommendations
- Final testing and documentation

---

## Key Business Questions

The analysis explored questions such as:

- Who are FinTrust's major customer segments?
- How do transaction behaviours differ across customer groups?
- How does transaction activity change over time?
- Which banking channels and transaction types generate the most activity?
- Which channel and transaction-type combinations experience higher failure rates?
- How do transaction values vary across customer segments?
- Which customer segments generate the highest value per customer?
- How does transaction success vary?
- Are higher-value transactions more likely to receive risk review?
- What operational patterns should management monitor more closely?

---

## Tools Used

- Microsoft Excel
- MySQL
- SQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- Power BI
- Git
- GitHub

---

# Project Structure

## Week 1 – Understand & Plan

Week 1 focused on establishing the analytical foundation of the project.

Activities included:

- Business understanding
- Review of project resources
- Initial data profiling
- Identification of analytical questions
- KPI planning
- Dashboard planning
- Development of the initial analysis plan
- Identification of assumptions and analytical risks

📁 See: [`week-1-understand-plan`](./week-1-understand-plan/)

---

## Week 2 – Analyse & Prepare

Week 2 moved from planning into practical implementation.

Activities included:

- Data quality assessment
- Data cleaning and preparation
- SQL business analysis
- Python exploratory data analysis
- Data visualisation
- Initial Power BI dashboard development
- KPI calculation
- Business insight generation
- Documentation of assumptions and limitations

📁 See: [`week-2-analyse-prepare`](./week-2-analyse-prepare/)

---

## Week 3 – Develop & Integrate

Week 3 extended the Week 2 analysis into a deeper and more decision-oriented business intelligence solution.

The focus was:

**Develop → Improve → Validate → Prepare for Final Integration**

Activities included:

- Advanced SQL analysis
- Advanced Python analysis
- Month-over-month trend analysis
- Customer-level analysis
- Normalized segment KPIs
- High-value transaction analysis
- Transaction failure analysis
- Risk-review analysis
- Power BI dashboard expansion
- Cross-tool validation
- Management recommendations

Week 3 deliverables included:

- 6 advanced SQL analyses
- 5 Python analyses
- 4-page Power BI dashboard
- KPI analysis
- Validated business findings
- Management recommendations
- Validation documentation

📁 See: [`week-3-develop-integrate`](./week-3-develop-integrate/)

---

## Week 4 – Test, Refine & Present

Week 4 was the final stage of the FinTrust project.

The focus was:

**Test → Validate → Refine → Finalize → Present**

Activities included:

- Final review of previous analysis
- Final SQL analysis
- Final Power BI dashboard review
- KPI accuracy testing
- Slicer and interaction testing
- Visual clarity and consistency review
- Final user experience testing
- Cross-tool validation
- Final business insights
- Final management recommendations
- Documentation of assumptions and limitations
- Lessons learned
- Final project reporting

📁 See: [`week-4-test-refine-present`](./week-4-test-refine-present/)

---

# Final Data Summary

The final cleaned analytical datasets contained:

- **1,500 customer records**
- **12,000 transaction records**

`Customer_ID` was used as the analytical key connecting the customer and transaction datasets.

`Transaction_ID` was used as the unique transaction identifier.

The transaction data covers:

**January 2026 – March 2026**

---

## Data Quality Work

Data preparation included:

- Missing-value review
- Duplicate checks
- Customer identifier validation
- Transaction identifier validation
- Data type review
- Date and time preparation
- Customer-to-transaction relationship validation
- Transaction amount checks
- Device type cleaning
- Location cleaning

Missing `Device_Type` and `Location` values were handled during data preparation rather than silently removing records.

---

# Final Core KPIs

| KPI | Final Value |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | NGN 560.48M |
| Average Transaction Value | NGN 46,706.45 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

---

# Key Business Findings

## 1. February Transaction Slowdown and March Recovery

Transaction activity declined in February before recovering strongly in March.

| Month | Transactions | Transaction Value |
|---|---:|---:|
| January 2026 | 4,133 | NGN 188.49M |
| February 2026 | 3,734 | NGN 175.79M |
| March 2026 | 4,133 | NGN 196.20M |

February transaction volume declined by approximately **9.65%** compared with January.

March returned to January's transaction volume while generating a higher transaction value.

### Business Meaning

Transaction activity can change significantly from month to month.

### Recommended Action

Management should monitor month-over-month transaction volume and value and investigate significant changes by:

- Channel
- Transaction type
- Customer segment

---

## 2. Higher-Value Transactions Receive More Risk-Review Attention

Risk-review rates increased as transaction values increased.

| Transaction Amount | Risk Review Rate |
|---|---:|
| Below NGN 10K | 17.66% |
| NGN 10K–49,999 | 17.81% |
| NGN 50K–99,999 | 18.95% |
| NGN 100K–199,999 | 22.13% |
| NGN 200K and above | 40.54% |

Transactions of **NGN 200,000 and above** received substantially more risk-review attention.

### Business Meaning

Transaction value is strongly associated with review selection in the synthetic dataset.

### Recommended Action

Maintain enhanced review attention for high-value transactions while periodically reviewing whether the thresholds remain appropriate.

---

## 3. Transaction Failure Hotspots Vary by Channel and Transaction Type

Failure rates were not evenly distributed.

Important combinations included:

- POS + Bill Payment: **7.22%**
- USSD + Transfer: **7.20%**
- POS + Deposit: **6.34%**
- Web + Bill Payment: **6.28%**

Mobile App + Transfer recorded a **6.09%** failure rate but produced **93 failed transactions** because of its higher transaction volume.

### Business Meaning

Looking only at failure percentage may hide services that generate large numbers of failed transactions.

### Recommended Action

Monitor both:

- Failure rate
- Absolute failed transaction count

at the **Channel × Transaction Type** level.

---

## 4. Customer Segment Size Can Hide Per-Customer Performance

The largest customer segment was not automatically the strongest on a per-customer basis.

After normalization:

- **SME customers** generated the highest transaction value per customer at approximately **NGN 387,923.02**
- **Student customers** recorded the highest transaction frequency at **8.23 transactions per customer**

### Business Meaning

Total transaction activity can favour larger customer segments and hide the contribution of smaller segments.

### Recommended Action

Compare:

- Total transaction value
- Total transactions
- Transaction value per customer
- Transactions per customer

when evaluating customer segment performance.

---

# Final SQL Analysis

The final SQL analysis focused on four major business areas:

### Monthly Transaction Performance

Measured month-over-month changes in:

- Transaction volume
- Transaction value

### Customer Segment Performance

Compared:

- Total customers
- Total transactions
- Total transaction value
- Transactions per customer
- Transaction value per customer

### Transaction Failure Hotspots

Analysed failure rates by:

**Channel × Transaction Type**

### Risk Review by Transaction Value

Grouped transactions into amount bands and compared risk-review rates.

SQL techniques used included:

- JOIN
- GROUP BY
- CASE
- Aggregations
- Common Table Expressions
- Window functions
- `LAG()`
- Conditional aggregation
- Normalized calculations

---

# Python Analysis

Python was used for:

- Exploratory data analysis
- Data validation
- Trend analysis
- Customer comparison
- Transaction analysis
- Failure-rate analysis
- Risk-review analysis
- Reproducibility testing
- Cross-validation of SQL findings

Libraries included:

- Pandas
- NumPy
- Matplotlib
- Seaborn

---

# Final Power BI Dashboard

The final Power BI solution contains:

- KPI section
- Customer Analysis
- Transaction Analysis
- Risk-Review Analysis

The dashboard includes:

- KPI cards
- Customer segment analysis
- Transaction trends
- Channel analysis
- Transaction status analysis
- Risk-review patterns
- Filters and slicers
- Cross-filtering
- Customer-level analysis
- Interactive navigation

---

## Final Power BI Testing

The dashboard was tested for:

### KPI Accuracy

Core KPI cards were compared with recalculated dataset values.

**Result: Passed**

### Slicers and Interactions

Customer Segment, Channel, and Transaction Date slicers were tested.

**Result: Passed**

### Visual Clarity and Consistency

Titles, labels, alignment, spacing, percentages, and currency formatting were reviewed.

**Result: Passed**

### User Experience

Navigation, readability, filtering, and visual interaction were tested from an end-user perspective.

**Result: Passed**

### Final Dashboard Status

**PASSED – READY FOR FINAL SUBMISSION**

---

# Validation

Important analytical findings were cross-validated using:

- SQL
- Python
- Power BI

Validated areas included:

1. Monthly transaction performance
2. Risk review by transaction value
3. Channel × Transaction Type failure hotspots
4. Customer segment normalized performance

The final validation showed strong consistency across the analytical tools.

Cross-tool validation increased confidence that the final findings were supported by the available data.

---

# Assumptions

The project assumes that:

- FinTrust is a fictional organisation
- Customer and transaction datasets are synthetic
- `Customer_ID` uniquely identifies customers
- `Transaction_ID` uniquely identifies transactions
- Cleaned datasets are the analytical source of truth
- The available transaction period covers January to March 2026
- Risk-review activity represents review selection rather than confirmed fraud

---

# Limitations

Important project limitations include:

- The data is synthetic
- Only three months of transaction history are available
- Long-term trends and seasonality cannot be fully assessed
- The analysis is descriptive and diagnostic
- The analysis does not prove causation
- `Risk_Review_Flag` is not a confirmed fraud indicator
- External operational factors such as outages, campaigns, complaints, and macroeconomic conditions are not included
- Recommendations would require further business validation before implementation
- The Power BI dashboard and analytical outputs are portfolio project outputs rather than a production banking system

---

# Responsible Use

`Risk_Review_Flag` is a synthetic educational review indicator.

It should **not** be interpreted as evidence that a customer committed:

- Fraud
- Financial crime
- Customer wrongdoing

Higher failure rates and higher review rates should be treated as signals for further investigation rather than proof of root cause.

The FinTrust datasets are synthetic and are used for educational and portfolio purposes.

---

# Key Lessons Learned

## Validation is part of analysis

A finding becomes stronger when it can be reproduced independently across multiple analytical tools.

## Totals can be misleading

Normalized measures such as:

- Transaction value per customer
- Transactions per customer

can reveal patterns hidden by total values.

## Good dashboards require prioritization

Adding more visuals does not automatically improve a dashboard.

Clear and decision-relevant visuals provide more value than overcrowded pages.

## Consistency across tools matters

SQL, Python, and Power BI should use consistent:

- KPI definitions
- Filters
- Calculations
- Business logic

## Documentation improves analytical quality

Documenting:

- Findings
- Evidence
- Recommendations
- Assumptions
- Limitations
- Validation

makes analytical work easier to understand and reproduce.

---

# Project Progression

The project followed a structured four-week analytics workflow:

**Week 1**

Understand & Plan

↓

**Week 2**

Analyse & Prepare

↓

**Week 3**

Develop & Integrate

↓

**Week 4**

Test, Validate, Refine & Present

---

# Final Project Outcome

The FinTrust project demonstrates an end-to-end analytics workflow:

**Business Understanding → Data Preparation → SQL Analysis → Python Analysis → Dashboard Development → Testing → Validation → Business Insights → Final Communication**

The project progressed from basic descriptive analysis into a more decision-oriented business intelligence solution.

The strongest improvement across the project was the move from simply reporting what happened to:

- Validating analytical patterns
- Comparing results across tools
- Explaining business meaning
- Developing evidence-based recommendations

---

## Repository Structure

```text
fintrust-data-analytics-project/
│
├── week-1-understand-plan/
│
├── week-2-analyse-prepare/
│
├── week-3-develop-integrate/
│
├── week-4-test-refine-present/
│
└── README.md
