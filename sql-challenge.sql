-- -- SQL Challenge: Format phone numbers into two styles
SELECT
  id,
  CONCAT('(', SUBSTRING(phone, 1, 3), ') ', SUBSTRING(phone, 4, 3), ' ', SUBSTRING(phone, 7, 4)) AS formatted_parentheses,
  CONCAT(SUBSTRING(phone, 1, 3), '-', SUBSTRING(phone, 4, 3), '-', SUBSTRING(phone, 7, 4)) AS formatted_dashes
FROM contacts;

-- Optional: Uncomment below if you need a table to test with
-- CREATE TABLE contacts (
--   id INT PRIMARY KEY,
--   phone CHAR(10)
-- );
-- INSERT INTO contacts (id, phone) VALUES
--   (1, '1234567890'),
--   (2, '4165551234');