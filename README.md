# local_bike
Final project / analytics engineer / databird

# 🚴 local_bike — dbt project

This dbt project models and transforms data for a fictional bike shop network operating through 3 stores: Paris, Lyon, and Marseille.

The project is deployed on **Google BigQuery** via **dbt Cloud**, using **Fivetran** for ingestion and **dbt** for transformation, testing, and documentation.

---

## 📁 Project structure

```bash
models/
│
├── staging/           -- Source cleaning & standardization (per store)
├── marts/             -- Business logic: fact & dimension tables
├── intermediate/      -- Optional intermediate transformations
└── sources.yml        -- Source metadata and configuration
