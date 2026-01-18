SELECT
    rfm_segment,
    snapshot_date,
    customer_count,
    LAG(customer_count) OVER (
        PARTITION BY rfm_segment
        ORDER BY snapshot_date
    ) AS prev_day_count
FROM rfm_segment_daily_snapshot
WHERE rfm_segment = 'At Risk'
  AND snapshot_date >= CURRENT_DATE - INTERVAL 3 DAY
  AND (
      last_alerted_at IS NULL
      OR last_alerted_at < NOW() - INTERVAL 3 DAY
  )
ORDER BY snapshot_date;
