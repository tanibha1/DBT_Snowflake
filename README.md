# 🏡 Airbnb Data Engineering Pipeline

## Overview

This project implements an end-to-end **metadata-driven data engineering pipeline** for Airbnb data using **Snowflake, dbt, SQL, and AWS**. It demonstrates modern data engineering best practices by building scalable, maintainable, and analytics-ready data pipelines.

The pipeline follows the **Medallion Architecture (Bronze → Silver → Gold)** to transform raw Airbnb listings, bookings, and hosts data into curated business datasets. It incorporates **incremental loading**, **Slowly Changing Dimension (SCD Type 2)** implementation using dbt snapshots, reusable dbt macros, source configuration, and automated data quality testing.

The metadata-driven design minimizes hardcoded logic, making the pipeline flexible, reusable, and easier to maintain while supporting efficient ETL processing and analytics.

## Key Features

- Metadata-driven ETL pipeline
- Medallion Architecture (Bronze → Silver → Gold)
- Incremental data loading with dbt
- SCD Type 2 implementation using dbt Snapshots
- Modular dbt models and reusable macros
- Data quality testing with dbt Tests
- Snowflake as the cloud data warehouse
- Analytics-ready dimensional models and fact tables

## Tech Stack

- Snowflake
- dbt (Data Build Tool)
- SQL
- AWS
- Git & GitHub
