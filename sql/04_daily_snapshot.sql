CREATE TABLE IF NOT EXISTS rfm_segment_daily_snapshot (
    snapshot_date DATE,
    rfm_segment VARCHAR(50),
    customer_count INT,
    last_alerted_at DATETIME,
    alert_sent BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (snapshot_date, rfm_segment)
);
