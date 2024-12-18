-- Customer table
CREATE TABLE IF NOT EXISTS raw_customer (
    customer_id INT,
    name STRING,
    email STRING,
    country STRING,
    customer_type STRING,
    registration_date DATE,
    age INT,
    gender STRING,
    total_purchases INT,
    source_file_name STRING,
    source_file_row_number INT,
    ingestion_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

-- Product table
CREATE TABLE IF NOT EXISTS raw_product (
    product_id INT,
    name STRING,
    category STRING,
    brand STRING,
    price FLOAT,
    stock_quantity INT,
    rating FLOAT,
    is_active BOOLEAN,
    source_file_name STRING,
    source_file_row_number INT,
    ingestion_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);

-- Order table
CREATE TABLE IF NOT EXISTS raw_order (
    customer_id INT,
    payment_method STRING,
    product_id INT,
    quantity INT,
    store_type STRING,
    total_amount DOUBLE,
    transaction_date DATE,
    transaction_id STRING,
    source_file_name STRING,
    source_file_row_number INT,
    ingestion_timestamp TIMESTAMP_NTZ DEFAULT CURRENT_TIMESTAMP()
);