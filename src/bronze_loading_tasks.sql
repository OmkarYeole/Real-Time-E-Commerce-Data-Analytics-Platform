-- Customer loading task
CREATE OR REPLACE TASK load_customer_data_task
    WAREHOUSE = compute_wh
    SCHEDULE = 'USING CRON 0 2 * * * America/New_York'
AS
    COPY INTO raw_customer FROM @adls_stage/Customer-data/
    FILE_FORMAT = csv_file_format
    PATTERN = '.*[.]csv';

-- Product loading task
CREATE OR REPLACE TASK load_product_data_task
    WAREHOUSE = compute_wh
    SCHEDULE = 'USING CRON 0 3 * * * America/New_York'
AS
    COPY INTO raw_product FROM @adls_stage/Product-data/
    FILE_FORMAT = json_file_format
    PATTERN = '.*[.]json';

-- Order loading task
CREATE OR REPLACE TASK load_order_data_task
    WAREHOUSE = compute_wh
    SCHEDULE = 'USING CRON 0 4 * * * America/New_York'
AS
    COPY INTO raw_order FROM @adls_stage/Order-data/
    FILE_FORMAT = parquet_file_format
    PATTERN = '.*[.]parquet';