{{ config(materialized='table') }}

select distinct CUSTOMER_ID from {{ ref('transactional_data_raw') }}