-- Customer transformation procedure
CREATE OR REPLACE PROCEDURE process_customer_changes()
RETURNS STRING
LANGUAGE SQL
AS
$$
-- [Customer transformation procedure code here]
$$;

-- Product transformation procedure
CREATE OR REPLACE PROCEDURE merge_product_to_silver()
RETURNS STRING
LANGUAGE SQL
AS
$$
-- [Product transformation procedure code here]
$$;

-- Order transformation procedure
CREATE OR REPLACE PROCEDURE merge_order_to_silver()
RETURNS STRING
LANGUAGE SQL
AS
$$
-- [Order transformation procedure code here]
$$;