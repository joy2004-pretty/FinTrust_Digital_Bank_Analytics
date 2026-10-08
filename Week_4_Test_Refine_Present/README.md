# FinTrust Digital Bank – Week 4: Test, Refine & Present

## Project Overview

Week 4 represents the final stage of the FinTrust Digital Bank Data Analytics project.

The focus of this stage was:

**Test → Validate → Refine → Finalize → Present**

The objective was to bring together the work completed during Weeks 1–3, complete final testing and validation, refine the analytical solution, document the final business insights, and prepare the project for submission and presentation.

---

## Week 4 Objectives

- Review and finalize previous analytical work
- Confirm data quality and calculation accuracy
- Refine the most important SQL analyses
- Complete and review the final Power BI dashboard
- Validate major findings across analytical tools
- Translate findings into business insights and recommendations
- Document assumptions, limitations, and lessons learned
- Prepare the final FinTrust project report

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
- Git / GitHub

---

## Week 4 Project Files

### `FinTrust_Week4_Part_B_Final_SQL_Analysis.sql`

Contains the final SQL analysis covering:

- Monthly transaction performance
- Customer segment performance
- Transaction failure hotspots
- Risk review by transaction value

The SQL analysis uses techniques such as:

- JOIN
- GROUP BY
- CASE statements
- Aggregations
- Common Table Expressions (CTEs)
- Window functions
- `LAG()`
- Normalized customer measures

---

### `FinTrust_Week4_Part_C_Final_Power_BI_Review.pdf`

Documents the final testing and refinement of the Power BI dashboard.

The review covered:

- KPI accuracy
- Slicers and filters
- Visual interactions
- Dashboard navigation
- Titles and labels
- Currency and percentage formatting
- Alignment and spacing
- Overall user experience

The final dashboard review tests were recorded as **Passed**.

---

### `FinTrust_Week4_Part_D_Final_Business_Insights.pdf`

Contains the final business insights using the structure:

**Finding → Evidence → Business Meaning → Recommended Action**

The insights focus on:

- Monthly transaction performance
- Risk-review behaviour
- Transaction failure patterns
- Customer segment performance

---

### `FinTrust_Week4_Part_E_Final_Validation.pdf`

Contains the final validation of major analytical findings.

The validation compares results across:

- SQL
- Python
- Power BI

The purpose was to confirm that important conclusions remained consistent across different analytical methods.

---

### `FinTrust_Week4_Assumptions_Limitations_and_Lessons_Learned.pdf`

Documents:

- Final assumptions
- Project limitations
- Responsible-use considerations
- Challenges encountered
- Lessons learned
- Improvements made throughout the project
- Recommendations for future analytical work

---

### `FinTrust_Week4_Advanced_PowerBI_Dashboard.pbix`

Contains the final interactive Power BI dashboard.

The dashboard covers:

- KPI reporting
- Customer analysis
- Transaction analysis
- Transaction trends
- Customer segments
- Banking channels
- Transaction status
- Risk-review patterns
- Filters and slicers
- Customer-level analysis

---

### `FinTrust_Final_Report.pdf`

Contains the final FinTrust Business Intelligence and Dashboard Solution report.

The report consolidates the work completed across Weeks 1–4, including:

- Business objectives
- Data sources
- Data quality
- Analytical methods
- SQL analysis
- Python analysis
- Power BI dashboard development
- KPI analysis
- Business insights
- Testing and validation
- Limitations
- Lessons learned
- Final project conclusions

---

## Final Core KPIs

| KPI | Final Value |
|---|---:|
| Total Customers | 1,500 |
| Total Transactions | 12,000 |
| Total Transaction Value | NGN 560.48M |
| Average Transaction Value | NGN 46,706.45 |
| Transaction Success Rate | 90.47% |
| Risk Review Rate | 19.60% |

---

## Key Business Findings

### 1. February Transaction Slowdown and March Recovery

Transaction activity declined in February 2026 before recovering strongly in March.

- January: **4,133 transactions**
- February: **3,734 transactions**
- March: **4,133 transactions**

Transaction values were approximately:

- January: **NGN 188.49M**
- February: **NGN 175.79M**
- March: **NGN 196.20M**

March returned to January's transaction volume while generating a higher total transaction value.

---

### 2. Higher-Value Transactions Received More Risk-Review Attention

Risk-review rates increased as transaction values increased.

| Transaction Amount | Risk Review Rate |
|---|---:|
| Below NGN 10K | 17.66% |
| NGN 10K–49,999 | 17.81% |
| NGN 50K–99,999 | 18.95% |
| NGN 100K–199,999 | 22.13% |
| NGN 200K and above | 40.54% |

This indicates a strong association between transaction value and review selection.

> `Risk_Review_Flag` is a synthetic educational review indicator and should not be interpreted as confirmed fraud.

---

### 3. Transaction Failures Were Concentrated in Specific Services

Failure rates varied across combinations of banking channel and transaction type.

Key examples included:

- POS + Bill Payment: **7.22%**
- USSD + Transfer: **7.20%**
- POS + Deposit: **6.34%**
- Web + Bill Payment: **6.28%**

Mobile App + Transfer had a failure rate of **6.09%** but generated **93 failed transactions** because of its higher transaction volume.

This demonstrates the importance of monitoring both:

- Failure rate
- Absolute failure count

---

### 4. Segment Size Can Hide Per-Customer Performance

The largest customer segment was not necessarily the strongest when performance was measured per customer.

After normalization:

- SME customers had the highest transaction value per customer at approximately **NGN 387,923.02**
- Student customers had the highest transaction frequency at **8.23 transactions per customer**

This shows why normalized KPIs should be used alongside overall totals.

---

## Final Power BI Dashboard

The final Power BI solution includes:

- KPI section
- Customer Analysis
- Transaction Analysis
- Risk-Review Analysis

The final dashboard was tested for:

- KPI accuracy
- Slicer functionality
- Cross-filtering
- Chart interactions
- Visual clarity
- Consistent formatting
- Navigation
- User experience

The final review concluded that the dashboard was:

**PASSED – READY FOR FINAL SUBMISSION**

---

## Validation Approach

Important findings were independently checked using multiple analytical tools.

The validation process compared:

- SQL query results
- Python calculations
- Power BI dashboard outputs

The validated areas included:

1. Monthly transaction performance
2. Risk review by transaction value
3. Channel × Transaction Type failure hotspots
4. Customer segment performance

The results showed strong consistency across the analytical tools.

---

## Assumptions

The project assumes that:

- FinTrust is a fictional digital bank
- Customer and transaction datasets are synthetic
- `Customer_ID` uniquely identifies customers
- `Transaction_ID` uniquely identifies transactions
- Cleaned datasets are the analytical source of truth
- The available transaction period covers January to March 2026
- Risk review represents review activity rather than confirmed fraud

---

## Limitations

The project has several limitations:

- The dataset is synthetic
- Only three months of transaction history are available
- Long-term trends and seasonality cannot be fully assessed
- The analysis is descriptive and diagnostic rather than causal
- Risk review is not a confirmed fraud indicator
- External factors such as outages, campaigns, complaints, and economic conditions are not included
- Recommendations would require further business validation before real-world implementation
- The Power BI dashboard and analytical files are portfolio outputs rather than a production banking system

---

## Lessons Learned

### Validation is part of analysis

Cross-checking findings across SQL, Python, and Power BI improved confidence in the results.

### Totals can be misleading

Normalized measures such as transaction value per customer and transactions per customer provided additional insight beyond total activity.

### Good dashboards require prioritization

Adding more visuals does not automatically improve a dashboard. Clear, decision-relevant visuals are more useful than overcrowded pages.

### Consistency across tools matters

Using consistent KPI definitions and filters was important when comparing SQL, Python, and Power BI outputs.

### Documentation improves analytical quality

Documenting assumptions, findings, evidence, recommendations, limitations, and validation makes analytical work more reproducible and easier to understand.

---

## Final Project Outcome

The FinTrust project demonstrates an end-to-end analytics workflow:

**Business Understanding → Data Preparation → Analysis → Dashboard Development → Testing → Validation → Business Insights → Final Communication**

The project progressed from basic descriptive analysis to a more complete business intelligence solution focused on validating patterns and explaining their meaning for decision-making.

---

## Responsible Use

The FinTrust datasets are synthetic and were created for educational and portfolio purposes.

`Risk_Review_Flag` represents additional transaction review only. It should not be interpreted as evidence of fraud, financial crime, or customer wrongdoing.

The findings demonstrate analytical techniques and should not be used for real-world financial decisions without appropriate business, compliance, security, and regulatory review.

---

## Author

**Joyce Wambui**

Data Analytics Internship Project  
**AnalystLab Africa – Experience Lab Internship Programme**
