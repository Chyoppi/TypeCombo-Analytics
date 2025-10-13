# TypeCombo-Analytics
This is a dbt project that uses the same data structure as my other project, [TypeCombo](https://github.com/Chyoppi/TypeCombo)

I attempted to use Airbyte to transfer the raw data into Google BigQuery, but the setup was unsuccesful. So I decided to generate dummy data which replicates the structure of TypeCombo Prisma + PostgreSQL database for now.

For now main goal is to practice dbt usage. Later on I want to solve how to connect the database into BigQuery so that I am able to make analysis from actual gameplay statistics.


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
