CREATE OR REPLACE VIEW rfm_base AS
SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_purchase_date,
    DATEDIFF(CURRENT_DATE, MAX(InvoiceDate)) AS recency,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(line_revenue) AS monetary
FROM clean_transactions
GROUP BY CustomerID;
