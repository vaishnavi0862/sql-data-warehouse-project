## 📌 Project Overview

This project demonstrates the design and implementation of an end-to-end **Data Warehouse and Analytics solution using SQL Server**.

The project integrates sales data from **ERP and CRM source systems**, processes the data through a **Bronze, Silver, and Gold architecture**, and transforms it into a business-ready **Star Schema** for analytical reporting.

The objective is to build a structured and reliable data platform that enables analysis of **customer behavior, product performance, and sales trends**.

---

## 🏗️ Data Architecture

The project follows a **Medallion Architecture** consisting of three layers:

```text
ERP CSV Files ──────┐
                    │
                    ▼
              ┌─────────────┐
CRM CSV Files ─►   BRONZE    │
              │  Raw Data    │
              └──────┬──────┘
                     │
              Data Cleaning
              & Transformation
                     │
                     ▼
              ┌─────────────┐
              │   SILVER    │
              │ Cleaned Data│
              └──────┬──────┘
                     │
              Data Modeling
              & Business Logic
                     │
                     ▼
              ┌─────────────┐
              │    GOLD     │
              │ Star Schema │
              └──────┬──────┘
                     │
                     ▼
              SQL Analytics
              & Reporting
```

### Bronze Layer

The Bronze layer stores data in its raw form after ingestion from the ERP and CRM CSV files.

**Purpose:**

* Preserve source data
* Maintain a raw copy of the datasets
* Provide a foundation for downstream transformations

### Silver Layer

The Silver layer contains cleaned and standardized data.

**Transformations include:**

* Handling missing values
* Removing duplicates
* Standardizing data formats
* Correcting data quality issues
* Applying data validation rules
* Integrating ERP and CRM datasets

### Gold Layer

The Gold layer contains business-ready analytical data modeled using a **Star Schema**.

It consists of:

* Fact tables containing measurable business events
* Dimension tables containing descriptive business attributes

This layer is optimized for analytical queries and reporting.

---

## 🔄 ETL Process

The project implements an ETL workflow:

### 1. Extract

Data is extracted from ERP and CRM CSV files.

### 2. Load

Raw source data is loaded into the Bronze layer in SQL Server.

### 3. Transform

Data is cleaned, standardized, validated, and integrated in the Silver layer.

### 4. Model

Business-ready data is transformed into fact and dimension tables in the Gold layer.

### 5. Analyze

SQL queries are used to generate business insights from the Gold layer.

---

## 🗃️ Data Sources

The project uses two source systems:

### ERP

Contains operational business data related to areas such as:

* Customers
* Products
* Sales transactions

### CRM

Contains customer-related information used to complement the ERP data.

The two sources are integrated to create a unified analytical data model.

---

## ⭐ Data Modeling

The Gold layer follows a **Star Schema** design.

The model separates:

### Fact Tables

Store measurable business events such as sales transactions.

Examples of measures include:

* Sales amount
* Quantity
* Order information
* Product-level sales metrics

### Dimension Tables

Provide descriptive information used to analyze facts.

Examples include:

* Customer
* Product
* Date

The Star Schema improves the usability of the warehouse for analytical queries and reporting.

---

## 🧹 Data Quality

Data quality checks are performed during the transformation process.

The project addresses issues such as:

* Missing values
* Duplicate records
* Invalid data
* Inconsistent formats
* Data type inconsistencies
* Incorrect or inconsistent customer/product information
* Data integration issues between ERP and CRM sources

The objective is to ensure that the Gold layer contains reliable and analysis-ready data.

---

## 📊 Analytics & Reporting

The final warehouse supports SQL-based analysis of:

### Customer Behavior

* Customer purchasing patterns
* Customer sales contribution
* Customer segmentation
* Customer trends

### Product Performance

* Product sales performance
* Top-performing products
* Product contribution to revenue
* Product-level trends

### Sales Trends

* Revenue trends
* Sales performance over time
* Quantity and sales analysis
* Business performance metrics

---

## 🛠️ Technologies Used

* **SQL Server**
* **SQL**
* **SQL Server Management Studio (SSMS)**
* **ETL**
* **Data Warehousing**
* **Medallion Architecture**
* **Star Schema**
* **Dimensional Data Modeling**
* **Data Cleaning & Transformation**
* **Git & GitHub**
  

---

## 📂 Project Structure

```text
data-warehouse-project/
│
├── datasets/
│   └── ERP and CRM source CSV files
│
├── docs/
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming-conventions.md
│
├── scripts/
│   ├── bronze/
│   │   └── Raw data ingestion scripts
│   │
│   ├── silver/
│   │   └── Data cleaning and transformation scripts
│   │
│   └── gold/
│       └── Analytical model and business logic scripts
│
├── tests/
│   └── Data quality and validation scripts
│
├── README.md
├── LICENSE
└── .gitignore
```

---

## 📐 Documentation

The project includes documentation covering:

* Data Architecture
* Data Flow
* ETL Process
* Data Models
* Data Catalog
* Naming Conventions
* Data Quality and Testing

Architecture and data modeling diagrams are created using **Draw.io**.

---

## 🎯 Key Learning Outcomes

Through this project, I gained practical experience in:

* Designing a relational data warehouse
* Implementing Bronze, Silver, and Gold data layers
* Building ETL workflows using SQL
* Cleaning and transforming raw datasets
* Integrating data from multiple source systems
* Designing fact and dimension tables
* Building a Star Schema
* Performing data quality validation
* Writing analytical SQL queries
* Creating business-ready datasets
* Documenting data architecture and data models

---

## 🚀 Project Workflow

```text
Source Data
    ↓
ERP + CRM CSV Files
    ↓
Data Ingestion
    ↓
Bronze Layer
    ↓
Data Cleaning & Standardization
    ↓
Silver Layer
    ↓
Business Transformation
    ↓
Gold Layer
    ↓
Star Schema
    ↓
SQL Analytics
    ↓
Business Insights
```

---

## 💼 Skills Demonstrated

**Data Engineering:**
ETL, Data Warehousing, Data Integration, Data Cleaning, Data Quality, Medallion Architecture

**Data Modeling:**
Star Schema, Fact Tables, Dimension Tables, Dimensional Modeling

**Analytics:**
SQL Analytics, Customer Analysis, Product Analysis, Sales Analysis

**Tools & Technologies:**
SQL Server, SSMS, SQL, Git, GitHub, Draw.io

---

## 👩‍💻 Author

**Sri Vaishnavi Baddipudi**

B.Tech — Artificial Intelligence & Data Science

