# Delhi Assembly Election Management & Voter Analytics System

## Overview
A MySQL-based relational database system designed to model Delhi Assembly elections and analyze voter participation and turnout trends using
privacy-preserving synthetic data.

## Key Features
- Normalized relational schema (3NF)
- Delhi-specific district and constituency hierarchy
- Triggers enforcing election rules
- Stored procedures for turnout analytics
- Analytical views for reporting

## Tech Stack
- MySQL 8.0
- MySQL Workbench

## Data Ethics
All voter-level records used in this project are synthetically generated for testing and analytics purposes. No real voter data is used.

## How to Run
1. Execute `01_schema.sql`
2. Execute `02_master_data.sql`
3. Execute `03_dummy_data.sql`
4. Execute `04_triggers_procedures.sql`
5. Execute `05_views_queries.sql`