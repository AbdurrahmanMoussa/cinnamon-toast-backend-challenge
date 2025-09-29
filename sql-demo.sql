-- Create CTE to test data
WITH seed_contacts AS (
  SELECT 1 AS id, '1234567890' AS phone UNION ALL
  SELECT 2,       '4165551234'            UNION ALL
  SELECT 3,       '9876543210' UNION ALL
  SELECT 4,       '999876543210' UNION ALL
  SELECT 5,       '876543210' 
), -- Check for null values and format phone numbers in two formats
    format_digits AS(
    SELECT
  id,phone,
(phone IS NOT NULL AND LENGTH(phone) = 10) AS is_valid,
  CONCAT('(', SUBSTRING(phone, 1, 3), ') ', SUBSTRING(phone, 4, 3), ' ', SUBSTRING(phone, 7, 4)) AS formatted_parentheses,
  CONCAT(SUBSTRING(phone, 1, 3), '-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4))  AS formatted_dashes
FROM seed_contacts
)

-- Check for invalid cases and select from format_digits CTE if values are valid
SELECT id,
    phone,
CASE WHEN phone IS NULL THEN 'Phone must not be null'
    WHEN LENGTH(phone) < 10 OR LENGTH(phone) > 10 THEN 'Phone must be 10 characters'
    ELSE 'Correct entry' END AS status,
CASE WHEN is_valid THEN formatted_parentheses END AS formatted_parentheses,
CASE WHEN is_valid  THEN formatted_dashes END       AS formatted_dashes
FROM format_digits
ORDER BY id;


