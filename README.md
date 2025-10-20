# TypeCombo-Analytics

This is a dbt project that uses the same data structure as my other project, [TypeCombo](https://github.com/Chyoppi/TypeCombo)

Data is replicated from a Prisma + PostgreSQL database into Google BigQuery using Airbyte as data ingestion pipeline. This project was created to practice modern data analysis and transformation tools.

## Tech Stack

- Airbyte -> Data ingestion and synchronization from PostgreSQL to BigQuery
- BigQuery -> Cloud data warehouse for analytics
- dbt -> Data transformation, testing and modeling
- Prisma -> ORM managing the PostgreSQL source database

## DBT project default readme.

### Using the starter project

Try running the following commands:

- dbt run
- dbt test

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
