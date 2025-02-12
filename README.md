# 1.Data Warehouse and Analytics Project
This project demonstrates a comprehensive **data warehousing and analytics solution**, covering the entire workflow from **data ingestion** to **insight generation**.

## **Key Components**
- **📂Data Architecture**: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
- **⚙️ETL Pipelines**: Extracting, transforming, and loading data from source systems into the warehouse.
- **📊 Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
- **📈Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

---
# 2.Project Requirements
## 2.1.Building the Data Warehouse (Data Engineering)
### 🎯 Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

### Specifications
- **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into a single, user-friendly data model designed for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---

## 2.2 BI: Analytics & Reporting (Data Analysis)
### 🎯 Objective
Develop SQL-based analytics to deliver detailed insights into:
- **Customer Behavior**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

----
# 3.Data Architecture
The data architecture for this project follows Medallion Architecture Bronze, Silver, and Gold layers:
![image](https://github.com/user-attachments/assets/c4c6d5de-d0dc-4fcf-9d34-a571c4fa641f)

---
# 4. Repository Structure
````markdown
data-warehouse-project/
│
├── datasets/                           # Raw datasets used for the project (ERP and CRM data)
│
├── docs/                               # Project documentation and architecture details
│   ├── data_architecture.drawio        # Draw.io file shows the project's architecture
│   ├── data_catalog.md                 # Catalog of datasets, including field descriptions and metadata
│   ├── data_flow.drawio                # Draw.io file for the data flow diagram
│   ├── data_models.drawio              # Draw.io file for data models (star schema)
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Scripts for extracting and loading raw data
│   ├── silver/                         # Scripts for cleaning and transforming data
│   ├── gold/                           # Scripts for creating analytical models
│
├── tests/                              # Test scripts and quality files
│
├── README.md                           # Project overview and instructions
