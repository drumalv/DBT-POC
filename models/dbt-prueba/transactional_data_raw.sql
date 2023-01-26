/* carga de datos raw */

/*{{ config(materialized='table') }}*/

with transactional_data as(

    SELECT * FROM {{ source('transactional_data_DB', 'transactional_data') }} LIMIT 100

)

select
cast(int64_field_0 as integer) as TRANSACTION_ID,
cast(timestamp_field_1 as timestamp) as TX_DATETIME,
cast(int64_field_2 as integer) as CUSTOMER_ID,		
cast(int64_field_3 as integer) as TERMINAL_ID,
cast(double_field_4	as FLOAT64) as TX_AMOUNT,
cast(int64_field_5 as integer) as TX_TIME_SECONDS,
cast(int64_field_6 as integer) as TX_TIME_DAYS,
cast(int64_field_7 as integer) as TX_FRAUD,
cast(int64_field_8 as integer) as TX_FRAUD_SCENARIO

from transactional_data

    