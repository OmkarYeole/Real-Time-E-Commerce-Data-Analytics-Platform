-- Storage integration setup
CREATE OR REPLACE STORAGE INTEGRATION azure_pacificretail_integration
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = AZURE
    ENABLED = TRUE
    AZURE_TENANT_ID = '3ded8b1b-070d-4629-82e4-c0b019f46057'
    STORAGE_ALLOWED_LOCATIONS = ('azure://prstgaccounttest.blob.core.windows.net/info-loading-container/');

-- Create external stage
CREATE OR REPLACE STAGE adls_stage
    STORAGE_INTEGRATION = azure_pacificretail_integration
    URL = 'azure://prstgaccounttest.blob.core.windows.net/info-loading-container';