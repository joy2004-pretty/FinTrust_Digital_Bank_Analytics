# FinTrust Digital Bank – Week 3: Develop & Integrate

## Project Overview

Week 3 builds on the Week 2 FinTrust Digital Bank analysis and develops it into a more complete, decision-oriented business intelligence solution.

The main focus for Week 3 was:

**Develop → Improve → Validate → Prepare for Final Integration**

The work included advanced SQL analysis, Python analysis, Power BI dashboard development, KPI analysis, validation of findings, and management recommendations.

---

## Week 3 Objectives

- Extend the SQL and Python analysis
- Expand the Power BI dashboard
- Validate findings across different analytical tools
- Develop evidence-based recommendations
- Prepare the project for final integration in Week 4

---

## Tools Used

- SQL / MySQL
- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Power BI
- Jupyter Notebook
- Microsoft Excel

---

## Week 3 Deliverables

The following work was completed:

- 6 advanced SQL analyses
- 5 Python analyses
- 4-page Power BI dashboard
- KPI analysis
- Validated business findings
- Management recommendations
- Validation activities
- Week 3 project summary

---

## Files Included

### `FinTrust_Week3_Advanced_SQL_Analysis.sql`

Contains advanced SQL analysis including:

- Customer segment performance
- Transactions per customer
- Transaction value per customer
- Month-over-month transaction trends
- Channel and transaction-type failure rates
- High-value transaction analysis
- Risk-review analysis
- Domestic vs international activity

The SQL analysis uses techniques such as:

- Common Table Expressions (CTEs)
- Window functions
- `LAG()`
- `NTILE()`
- Conditional aggregation
- Ranking
- Month-over-month calculations

---

### `FinTrust_Week3_Advanced_Python_Analysis.ipynb`

Contains advanced Python analysis covering:

1. Monthly transaction trends
2. Transaction failure rates by channel and transaction type
3. Customer segment transaction values
4. Risk-review rate by transaction amount
5. Customer transaction behaviour and digital engagement

Python libraries used include:

- Pandas
- NumPy
- Matplotlib
- Seaborn

---

### `FinTrust_Week3_KPI_Analysis.pdf`

Documents the key performance indicators used to evaluate FinTrust customer activity, transaction performance, and risk-review behaviour.

### Core KPIs

| KPI | Result |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | NGN 560.48M |
| Average Transaction Value | NGN 46,706.45 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

---

## Key Findings

### 1. February slowdown followed by March recovery

Transaction activity declined in February and recovered strongly in March.

- January: 4,133 transactions
- February: 3,734 transactions
- March: 4,133 transactions

Transaction volume declined by **9.65% in February** compared with January.

March recovered to the same transaction volume as January while recording a higher total transaction value.

---

### 2. Higher-value transactions received more risk review

Risk-review rates increased as transaction values increased.

- Below NGN 10,000: **17.66%**
- NGN 200,000 and above: **40.54%**
- Top 10% highest-value transactions: **36.00% risk-review rate**

This shows that higher-value transactions were more frequently selected for review.

> Note: `Risk_Review_Flag` is a synthetic educational review indicator and should not be interpreted as confirmed fraud.

---

### 3. Failure rates varied by channel and transaction type

The highest observed failure-rate combinations included:

- POS + Bill Payment: **7.22%**
- USSD + Transfer: **7.20%**

Mobile App + Transfer recorded **93 failed transactions**, showing why both failure percentage and total failure count should be monitored.

---

### 4. Customer segment totals can hide per-customer performance

Although the Everyday segment had the highest overall activity because it had the largest customer base, normalized KPIs showed a different picture.

- SME customers recorded the highest transaction value per customer at approximately **NGN 387,923.02**
- Student customers recorded the highest transaction frequency at **8.23 transactions per customer**

This shows the importance of comparing normalized KPIs alongside overall totals.

---

## Validation

Major findings were cross-validated using:

- SQL
- Python
- Power BI

The validation process compared outputs such as:

- Transaction counts
- Transaction values
- Failure rates
- Risk-review rates
- Customer segment performance

The analysis showed strong consistency across the three tools.

Four of the five major findings were fully supported, while one finding was revised based on the validation evidence.

---

## Management Recommendations

Based on the validated analysis, the following actions were recommended:

### 1. Strengthen monthly performance monitoring

Management should regularly monitor month-over-month changes in transaction volume and value.

Significant declines should be investigated by:

- Channel
- Transaction type
- Customer segment

---

### 2. Apply greater review attention to high-value transactions

Higher-value transactions showed higher risk-review rates.

A tiered review approach can be used to give greater attention to high-value transactions while periodically reviewing thresholds.

---

### 3. Monitor both failure rate and failure count

Failure investigations should consider both:

- Failure percentage
- Total number of failed transactions

This avoids focusing only on percentages while missing high-volume services with larger absolute numbers of failures.

---

### 4. Use normalized customer-segment KPIs

Management should compare:

- Transaction value per customer
- Transactions per customer

alongside total transactions and total transaction value.

This provides a more balanced view of customer segment performance.

---

## Limitations

The analysis has several limitations:

- The dataset is synthetic
- The analysis covers only three months
- `Risk_Review_Flag` is not a fraud label
- Some differences in customer behaviour are relatively small
- Findings show association, not causation

---

## Week 4 Next Steps

The next stage of the project will focus on:

- Final testing
- Dashboard refinement
- Final documentation
- Final project integration
- Presentation preparation

---

## Author

**Joyce Wambui**

Data Analytics Internship Project  
FinTrust Digital Bank
