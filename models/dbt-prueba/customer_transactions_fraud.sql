{{ config(materialized='table') }}

select * from {{ ref('transactional_data_raw') }}