USE ecommerce_analytics;

-- Clean transactional data
CREATE OR REPLACE VIEW clean_transactions AS
SELECT
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    CASE
        WHEN InvoiceDate LIKE '%/%'
        THEN STR_TO_DATE(InvoiceDate, '%m/%d/%Y %H:%i')
        ELSE STR_TO_DATE(InvoiceDate, '%d-%m-%Y %H:%i')
    END AS InvoiceDate,
    UnitPrice,
    Quantity * UnitPrice AS line_revenue,
    NULLIF(CustomerID, '') AS CustomerID,
    Country
FROM online_retail_raw
WHERE Quantity > 0
  AND UnitPrice > 0
  AND CustomerID IS NOT NULL;
