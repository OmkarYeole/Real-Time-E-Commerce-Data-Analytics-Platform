-- CSV file format
CREATE OR REPLACE FILE FORMAT csv_file_format
    TYPE = CSV
    FIELD_DELIMITER = ','
    SKIP_HEADER = 1
    NULL_IF = ('NULL', 'null', '')
    EMPTY_FIELD_AS_NULL = TRUE
    COMPRESSION = AUTO;

-- JSON file format
CREATE OR REPLACE FILE FORMAT json_file_format
    TYPE = JSON
    STRIP_OUTER_ARRAY = TRUE
    IGNORE_UTF8_ERRORS = TRUE;

-- Parquet file format
CREATE OR REPLACE FILE FORMAT parquet_file_format
    TYPE = PARQUET
    COMPRESSION = AUTO
    BINARY_AS_TEXT = FALSE
    TRIM_SPACE = FALSE;